These are various tests for the radio libraries.
tx means the test sends a pacetand rx means the test receives a packet
The numbers correspond to the settings in radio_tests_info.h
For the most part the tests are paired by numbers.
- tx1 sends packet 1/rx1 receives packet 1
- tx2/rx2
- rx12 receives both packet 1 and 2
- rx12_tx3 receives 1 and 2 and sends 3/rx3_tx12 sends 1 and 2 and rec 3
- rx4/tx4
- rx5/tx5

- sa_packet_corruption.cpp, tracker_receiver.cpp, tx_slow.cpp are used for different shoulder angel tests, but could be used as a test as well. 
