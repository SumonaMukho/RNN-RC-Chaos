#!/bin/bash

cd ../../../Methods

mpiexec -n 3 python3 RUN.py rnn_statefull_parallel \
--mode all \
--display_output 0 \
--system_name KuramotoSivashinskyGP512 \
--write_to_log 1 \
--N 100000 \
--N_used 10000 \
--RDIM 512 \
--rnn_cell_type lstm \
--unitary_cplex 1 \
--unitary_capacity 2 \
--regularization 0.0 \
--scaler standard \
--initializer xavier \
--sequence_length 4 \
--hidden_state_propagation_length 300 \
--prediction_length 2 \
--rnn_activation_str tanh \
--dropout_keep_prob 0.999 \
--zoneout_keep_prob 0.999 \
--rnn_num_layers 2 \
--rnn_size_layers 32 \
--subsample 2 \
--batch_size 32 \
--max_epochs 20 \
--num_rounds 2 \
--overfitting_patience 100 \
--training_min_epochs 1 \
--learning_rate 0.001 \
--train_val_ratio 0.8 \
--num_parallel_groups 3 \
--parallel_group_interaction_length 1 \
--iterative_prediction_length 200 \
--num_test_ICS 1 \
--reference_train_time 1 \
--buffer_train_time 0 \
--retrain 0 \
--noise_level 5



