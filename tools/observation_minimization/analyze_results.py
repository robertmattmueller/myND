import os
import os.path

blocksworld_instances = ["blocksworld_p%d.sas" % num for num in xrange(1,11)]
fr_instances = ['fr-p_10_10.sas', 'fr-p_10_1.sas', 'fr-p_10_2.sas', 'fr-p_10_3.sas', 'fr-p_10_4.sas', 'fr-p_10_5.sas', 'fr-p_10_7.sas', 'fr-p_10_8.sas', 'fr-p_1_10.sas', 'fr-p_1_1.sas', 'fr-p_1_2.sas', 'fr-p_1_3.sas', 'fr-p_1_4.sas', 'fr-p_1_5.sas', 'fr-p_1_6.sas', 'fr-p_1_7.sas', 'fr-p_1_8.sas', 'fr-p_1_9.sas', 'fr-p_2_2.sas', 'fr-p_2_3.sas', 'fr-p_2_4.sas', 'fr-p_2_7.sas', 'fr-p_2_8.sas', 'fr-p_3_1.sas', 'fr-p_3_2.sas', 'fr-p_3_7.sas', 'fr-p_3_8.sas', 'fr-p_4_1.sas', 'fr-p_4_2.sas', 'fr-p_4_3.sas', 'fr-p_4_4.sas', 'fr-p_4_6.sas', 'fr-p_4_7.sas', 'fr-p_4_8.sas', 'fr-p_4_9.sas', 'fr-p_5_10.sas', 'fr-p_5_1.sas', 'fr-p_5_2.sas', 'fr-p_5_3.sas', 'fr-p_5_4.sas', 'fr-p_5_5.sas', 'fr-p_5_8.sas', 'fr-p_5_9.sas', 'fr-p_6_10.sas', 'fr-p_6_1.sas', 'fr-p_6_2.sas', 'fr-p_6_3.sas', 'fr-p_6_4.sas', 'fr-p_6_5.sas', 'fr-p_6_8.sas', 'fr-p_6_9.sas', 'fr-p_7_10.sas', 'fr-p_7_1.sas', 'fr-p_7_2.sas', 'fr-p_7_3.sas', 'fr-p_7_4.sas', 'fr-p_7_5.sas', 'fr-p_7_6.sas', 'fr-p_7_7.sas', 'fr-p_7_8.sas', 'fr-p_8_10.sas', 'fr-p_8_1.sas', 'fr-p_8_2.sas', 'fr-p_8_4.sas', 'fr-p_8_5.sas', 'fr-p_8_6.sas', 'fr-p_8_7.sas', 'fr-p_8_8.sas', 'fr-p_8_9.sas', 'fr-p_9_1.sas', 'fr-p_9_2.sas', 'fr-p_9_3.sas', 'fr-p_9_6.sas', 'fr-p_9_7.sas', 'fr-p_9_8.sas'] 
tidyup_instances = ['tidyup_r1_t1_c1_w1.sas','tidyup_r1_t1_c1_w2.sas','tidyup_r1_t1_c2_w1.sas','tidyup_r1_t1_c2_w2.sas','tidyup_r1_t2_c2_w2.sas','tidyup_r1_t2_c2_w3.sas','tidyup_r1_t2_c2_w4.sas','tidyup_r1_t2_c3_w2.sas','tidyup_r1_t2_c3_w3.sas','tidyup_r1_t2_c3_w4.sas','tidyup_r1_t2_c4_w2.sas','tidyup_r1_t2_c4_w3.sas','tidyup_r1_t2_c4_w4.sas','tidyup_r2_t1_c1_w1.sas','tidyup_r2_t1_c1_w2.sas','tidyup_r2_t1_c2_w1.sas','tidyup_r2_t1_c2_w2.sas','tidyup_r2_t2_c2_w2.sas','tidyup_r2_t2_c2_w3.sas','tidyup_r2_t2_c2_w4.sas','tidyup_r2_t2_c3_w2.sas','tidyup_r2_t2_c3_w3.sas','tidyup_r2_t2_c3_w4.sas','tidyup_r2_t2_c4_w2.sas','tidyup_r2_t2_c4_w3.sas','tidyup_r2_t2_c4_w4.sas','tidyup_r2_t3_c3_w3.sas','tidyup_r2_t3_c3_w4.sas','tidyup_r2_t3_c3_w5.sas','tidyup_r2_t3_c3_w6.sas','tidyup_r2_t3_c4_w3.sas','tidyup_r2_t3_c4_w4.sas','tidyup_r2_t3_c4_w5.sas','tidyup_r2_t3_c4_w6.sas','tidyup_r2_t3_c5_w3.sas','tidyup_r2_t3_c5_w4.sas','tidyup_r2_t3_c5_w5.sas','tidyup_r2_t3_c5_w6.sas','tidyup_r2_t3_c6_w3.sas','tidyup_r2_t3_c6_w4.sas','tidyup_r2_t3_c6_w5.sas','tidyup_r2_t3_c6_w6.sas','tidyup_r2_t4_c4_w4.sas','tidyup_r2_t4_c4_w5.sas','tidyup_r2_t4_c4_w6.sas','tidyup_r2_t4_c4_w7.sas','tidyup_r2_t4_c4_w8.sas','tidyup_r2_t4_c5_w4.sas','tidyup_r2_t4_c5_w5.sas','tidyup_r2_t4_c5_w6.sas','tidyup_r2_t4_c5_w7.sas','tidyup_r2_t4_c5_w8.sas','tidyup_r2_t4_c6_w4.sas','tidyup_r2_t4_c6_w5.sas','tidyup_r2_t4_c6_w6.sas','tidyup_r2_t4_c6_w7.sas','tidyup_r2_t4_c6_w8.sas','tidyup_r2_t4_c7_w4.sas','tidyup_r2_t4_c7_w5.sas','tidyup_r2_t4_c7_w6.sas','tidyup_r2_t4_c7_w7.sas','tidyup_r2_t4_c7_w8.sas','tidyup_r2_t4_c8_w4.sas','tidyup_r2_t4_c8_w5.sas','tidyup_r2_t4_c8_w6.sas','tidyup_r2_t4_c8_w7.sas','tidyup_r2_t4_c8_w8.sas','tidyup_r3_t1_c1_w1.sas','tidyup_r3_t1_c1_w2.sas','tidyup_r3_t1_c2_w1.sas','tidyup_r3_t1_c2_w2.sas','tidyup_r3_t2_c2_w2.sas','tidyup_r3_t2_c2_w3.sas','tidyup_r3_t2_c2_w4.sas','tidyup_r3_t2_c3_w2.sas','tidyup_r3_t2_c3_w3.sas','tidyup_r3_t2_c3_w4.sas','tidyup_r3_t2_c4_w2.sas','tidyup_r3_t2_c4_w3.sas','tidyup_r3_t2_c4_w4.sas','tidyup_r3_t3_c3_w3.sas','tidyup_r3_t3_c3_w4.sas','tidyup_r3_t3_c3_w5.sas','tidyup_r3_t3_c3_w6.sas','tidyup_r3_t3_c4_w3.sas','tidyup_r3_t3_c4_w4.sas','tidyup_r3_t3_c4_w5.sas','tidyup_r3_t3_c4_w6.sas','tidyup_r3_t3_c5_w3.sas','tidyup_r3_t3_c5_w4.sas','tidyup_r3_t3_c5_w5.sas','tidyup_r3_t3_c5_w6.sas','tidyup_r3_t3_c6_w3.sas','tidyup_r3_t3_c6_w4.sas','tidyup_r3_t3_c6_w5.sas','tidyup_r3_t3_c6_w6.sas','tidyup_r3_t4_c4_w4.sas','tidyup_r3_t4_c4_w5.sas','tidyup_r3_t4_c4_w6.sas','tidyup_r3_t4_c4_w7.sas','tidyup_r3_t4_c4_w8.sas','tidyup_r3_t4_c5_w4.sas','tidyup_r3_t4_c5_w5.sas','tidyup_r3_t4_c5_w6.sas','tidyup_r3_t4_c5_w7.sas','tidyup_r3_t4_c5_w8.sas','tidyup_r3_t4_c6_w4.sas','tidyup_r3_t4_c6_w5.sas','tidyup_r3_t4_c6_w6.sas','tidyup_r3_t4_c6_w7.sas','tidyup_r3_t4_c6_w8.sas','tidyup_r3_t4_c7_w4.sas','tidyup_r3_t4_c7_w5.sas','tidyup_r3_t4_c7_w6.sas','tidyup_r3_t4_c7_w7.sas','tidyup_r3_t4_c7_w8.sas','tidyup_r3_t4_c8_w4.sas','tidyup_r3_t4_c8_w5.sas','tidyup_r3_t4_c8_w6.sas','tidyup_r3_t4_c8_w7.sas','tidyup_r3_t4_c8_w8.sas','tidyup_r3_t5_c10_w10.sas','tidyup_r3_t5_c10_w5.sas','tidyup_r3_t5_c10_w6.sas','tidyup_r3_t5_c10_w7.sas','tidyup_r3_t5_c10_w8.sas','tidyup_r3_t5_c10_w9.sas','tidyup_r3_t5_c5_w10.sas','tidyup_r3_t5_c5_w5.sas','tidyup_r3_t5_c5_w6.sas','tidyup_r3_t5_c5_w7.sas','tidyup_r3_t5_c5_w8.sas','tidyup_r3_t5_c5_w9.sas','tidyup_r3_t5_c6_w10.sas','tidyup_r3_t5_c6_w5.sas','tidyup_r3_t5_c6_w6.sas','tidyup_r3_t5_c6_w7.sas','tidyup_r3_t5_c6_w8.sas','tidyup_r3_t5_c6_w9.sas','tidyup_r3_t5_c7_w10.sas','tidyup_r3_t5_c7_w5.sas','tidyup_r3_t5_c7_w6.sas','tidyup_r3_t5_c7_w7.sas','tidyup_r3_t5_c7_w8.sas','tidyup_r3_t5_c7_w9.sas','tidyup_r3_t5_c8_w10.sas','tidyup_r3_t5_c8_w5.sas','tidyup_r3_t5_c8_w6.sas','tidyup_r3_t5_c8_w7.sas','tidyup_r3_t5_c8_w8.sas','tidyup_r3_t5_c8_w9.sas','tidyup_r3_t5_c9_w10.sas','tidyup_r3_t5_c9_w5.sas','tidyup_r3_t5_c9_w6.sas','tidyup_r3_t5_c9_w7.sas','tidyup_r3_t5_c9_w8.sas','tidyup_r3_t5_c9_w9.sas','tidyup_r3_t6_c10_w10.sas','tidyup_r3_t6_c10_w11.sas','tidyup_r3_t6_c10_w12.sas','tidyup_r3_t6_c10_w6.sas','tidyup_r3_t6_c10_w7.sas','tidyup_r3_t6_c10_w8.sas','tidyup_r3_t6_c10_w9.sas','tidyup_r3_t6_c11_w10.sas','tidyup_r3_t6_c11_w11.sas','tidyup_r3_t6_c11_w12.sas','tidyup_r3_t6_c11_w6.sas','tidyup_r3_t6_c11_w7.sas','tidyup_r3_t6_c11_w8.sas','tidyup_r3_t6_c11_w9.sas','tidyup_r3_t6_c12_w10.sas','tidyup_r3_t6_c12_w11.sas','tidyup_r3_t6_c12_w12.sas','tidyup_r3_t6_c12_w6.sas','tidyup_r3_t6_c12_w7.sas','tidyup_r3_t6_c12_w8.sas','tidyup_r3_t6_c12_w9.sas','tidyup_r3_t6_c6_w10.sas','tidyup_r3_t6_c6_w11.sas','tidyup_r3_t6_c6_w12.sas','tidyup_r3_t6_c6_w6.sas','tidyup_r3_t6_c6_w7.sas','tidyup_r3_t6_c6_w8.sas','tidyup_r3_t6_c6_w9.sas','tidyup_r3_t6_c7_w10.sas','tidyup_r3_t6_c7_w11.sas','tidyup_r3_t6_c7_w12.sas','tidyup_r3_t6_c7_w6.sas','tidyup_r3_t6_c7_w7.sas','tidyup_r3_t6_c7_w8.sas','tidyup_r3_t6_c7_w9.sas','tidyup_r3_t6_c8_w10.sas','tidyup_r3_t6_c8_w11.sas','tidyup_r3_t6_c8_w12.sas','tidyup_r3_t6_c8_w6.sas','tidyup_r3_t6_c8_w7.sas','tidyup_r3_t6_c8_w8.sas','tidyup_r3_t6_c8_w9.sas','tidyup_r3_t6_c9_w10.sas','tidyup_r3_t6_c9_w11.sas','tidyup_r3_t6_c9_w12.sas','tidyup_r3_t6_c9_w6.sas','tidyup_r3_t6_c9_w7.sas','tidyup_r3_t6_c9_w8.sas','tidyup_r3_t6_c9_w9.sas']

# configure it here!
methods = ["greedyprecut", "greedyprecutrecycling", "greedyprecutrecyclinginvariants"]
#methods = ["greedyprecut"]
result_path = ""
instances = blocksworld_instances + fr_instances + tidyup_instances


max_iterations = {}
for method in methods:
	max_iterations[method] = 0

method_to_instance_runtime = {}
method_to_instance_num_before = {}
method_to_instance_num_after = {}
for method in methods:
	instance_to_cost = {}
	instance_to_runtime = {}
	instance_to_num_before = {}
	instance_to_num_after = {}
	for instance in instances:
		file = result_path + instance + method + ".stdout.log"
		if not os.path.exists(file):
			#print("File " + file + " does not exist!")
			continue
			# Auf dem Grid haengen geblieben???

		# read the file
		runtime = None
		num_observation_before = None
		num_observation_after = None

		iteration = -1
		for line in open(file,'r'):

			if line.startswith("duration:"):
				runtime = int(line.strip()[10:-2])
			if line.startswith("Initial number of sensing actions:"):
				num_observation_before = int(line.strip()[34:])
			if line.startswith("Resulting number of sensing actions:"):
				num_observation_after = int(line.strip()[36:])

		instance_to_runtime[instance] = runtime
		instance_to_num_before[instance] = num_observation_before
		instance_to_num_after[instance] = num_observation_after
	method_to_instance_runtime[method] = instance_to_runtime
	method_to_instance_num_before[method] = instance_to_num_before
	method_to_instance_num_after[method] = instance_to_num_after



table_header = []
table_header.append('instance_name')
for method in methods:
	table_header.append('runtime_%s' % method)
	table_header.append('num_before_%s' % method)
	table_header.append('num_after_%s' % method)
print(','.join(table_header))

for instance in instances:
	table_row = []
	instance_name = instance[:-4]
	table_row.append(instance_name)
	for method in methods:
		if instance in method_to_instance_runtime[method]:
			runtime    = str(method_to_instance_runtime[method][instance])
			num_before = str(method_to_instance_num_before[method][instance])
			num_after  = str(method_to_instance_num_after[method][instance])
			table_row.append(runtime)
			table_row.append(num_before)
			table_row.append(num_after)
		else:
			table_row.append("")
			table_row.append("")
			table_row.append("")
	print(','.join(table_row))