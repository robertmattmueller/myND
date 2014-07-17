package mynd.search;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import mynd.Global;
import mynd.explicit.ExplicitState;


/**
 * Generate an output of the whole search graph in GraphViz (dot) format.
 * 
 * @author Robert Mattmueller
 */
public class GraphvizWriter {

    /**
     * Search manager
     */
    AOStarSearch search;
    
    /**
     * Create a new Graphviz writer for a given search manager instance.
     * 
     * @param aostar
     *            The search manager instance
     */
    public GraphvizWriter(AOStarSearch search) {
        this.search = search;
    }
    
    /**
     * Create a description of the current search graph in GraphViz (dot)
     * format. Nodes are identified and printed by giving the underlying
     * variable assignments and an indicator whether the node is currently
     * marked as proven. For each connector and each child variable, an arc from
     * the parent to the child is drawn, labelled with the protagonist operator
     * to which the connector corresponds.
     * 
     * @param complete
     *            True if the complete graph should be drawn, and false if only
     *            marked connectors should be followed
     * @return A string containing the complete GraphViz (dot) description
     */
    public String createOutput(boolean complete) {
        List<AOStarNode> seenNodes = new LinkedList<AOStarNode>();
        List<Connector> seenConnectors = new LinkedList<Connector>();
        Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
        assert Global.problem.isFullObservable;
        queue.offer(search.stateNodeMap.get(Global.problem.getSingleInitialState().uniqueID));

        while (!queue.isEmpty()) {
            AOStarNode node = queue.poll();
            seenNodes.add(node);

            Collection<Connector> connectors = null;
            if (complete) {
                connectors = node.outgoingConnectors;
            }
            else {
                connectors = new ArrayList<Connector>();
                if (node.markedConnector != null) {
                    connectors.add(node.markedConnector);
                }
            }

            for (Connector connector : connectors) {
                seenConnectors.add(connector);
                for (AOStarNode next : connector.children) {
                    if (!seenNodes.contains(next) && !queue.contains(next)) {
                        queue.offer(next);
                    }
                }
            }
        }

        StringBuffer buffer = new StringBuffer();

        buffer.append("digraph {\n");

        for (AOStarNode node : seenNodes) {
            buffer.append(node.index);
            buffer.append(" [ peripheries=\"1\", shape=\"rectangle\", ");
            if (node.isGoalNode) {
            	buffer.append("fontcolor=\"white\", style=\"filled\", fillcolor=\"blue\", ");
            }
            else {
                if (!node.isProven) {
                	if (node.isDisproven && !node.isExpanded()) {
                		buffer.append("style=\"filled\", fillcolor=\"red\", ");
                	}
                	else if ((node.isDisproven && node.isExpanded())) {
                		buffer.append("style=\"filled,rounded\", fillcolor=\"red\", ");
                	}
                	else if (!node.isExpanded()) {
                		buffer.append("style=\"filled\", fillcolor=\"yellow\", ");
                	}
                	else {
                		buffer.append("style=\"rounded\", ");
                	}
                }
                else {
                	if (!node.isExpanded()) {
                		buffer.append("style=\"filled\", fillcolor=\"green\", ");
                    }
                	else {
                		buffer.append("style=\"filled,rounded\", fillcolor=\"green\", ");
                	}
                }
            }
            buffer.append("label=\"");
            assert Global.problem.isFullObservable;
            for (int i = 0; i < ((ExplicitState) node.state).size - 1; i++) {
            	String tmp = Global.problem.propositionNames.get(i).get(((ExplicitState) node.state).variableValueAssignment.get(i));
    			if (! tmp.startsWith("(not"))
    			{
    				buffer.append(tmp);
    				buffer.append("\\n");
    			}
			}
            buffer.append(Global.problem.propositionNames.get(((ExplicitState) node.state).size - 1).get(((ExplicitState) node.state).variableValueAssignment.get(((ExplicitState) node.state).size - 1)));
            buffer.append("\" ]\n");
        }
        for (Connector connector : seenConnectors) {
            for (AOStarNode next : connector.children) {
                buffer.append(connector.parent.index);
                buffer.append(" -> ");
                buffer.append(next.index);
                buffer.append(" [ label=\"");
                buffer.append(connector.operator.getName());
                buffer.append("\"");
                if (complete && connector.equals(connector.parent.markedConnector) && connector.isSafe) {
                	buffer.append(", style=\"bold\", color=\"red:blue\" ");
                }
                else if (complete && connector.equals(connector.parent.markedConnector) && !connector.isSafe) {
                	buffer.append(", style=\"bold\", color=\"red\" ");
                }
                else if (connector.isSafe) {
                	buffer.append(", style=\"bold\", color=\"blue\" ");
                }
                buffer.append(" ]\n");
            }
        }
        buffer.append("}\n");
        return buffer.toString();
    }

}
