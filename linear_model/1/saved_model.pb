??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-0-gc256c071bb28??
v
Single/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameSingle/kernel
o
!Single/kernel/Read/ReadVariableOpReadVariableOpSingle/kernel*
_output_shapes

:*
dtype0
n
Single/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameSingle/bias
g
Single/bias/Read/ReadVariableOpReadVariableOpSingle/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
	bias

	variables
trainable_variables
regularization_losses
	keras_api
6
iter
	decay
learning_rate
momentum

0
	1

0
	1
 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 
YW
VARIABLE_VALUESingle/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUESingle/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
	1

0
	1
 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics

	variables
trainable_variables
regularization_losses
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
 
 
 
 
 
 
 
4
	total
	count
	variables
 	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables

serving_default_Single_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_Single_inputSingle/kernelSingle/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_4105
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!Single/kernel/Read/ReadVariableOpSingle/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_4209
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameSingle/kernelSingle/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_4243??
?
?
"__inference_signature_wrapper_4105
single_input
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsingle_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_3995o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_nameSingle_input
?

?
D__inference_sequential_layer_call_and_return_conditional_losses_4133

inputs7
%single_matmul_readvariableop_resource:4
&single_biasadd_readvariableop_resource:
identity??Single/BiasAdd/ReadVariableOp?Single/MatMul/ReadVariableOp?
Single/MatMul/ReadVariableOpReadVariableOp%single_matmul_readvariableop_resource*
_output_shapes

:*
dtype0w
Single/MatMulMatMulinputs$Single/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Single/BiasAdd/ReadVariableOpReadVariableOp&single_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Single/BiasAddBiasAddSingle/MatMul:product:0%Single/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
IdentityIdentitySingle/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Single/BiasAdd/ReadVariableOp^Single/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2>
Single/BiasAdd/ReadVariableOpSingle/BiasAdd/ReadVariableOp2<
Single/MatMul/ReadVariableOpSingle/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_4081
single_input
single_4075:
single_4077:
identity??Single/StatefulPartitionedCall?
Single/StatefulPartitionedCallStatefulPartitionedCallsingle_inputsingle_4075single_4077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Single_layer_call_and_return_conditional_losses_4012v
IdentityIdentity'Single/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????g
NoOpNoOp^Single/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
Single/StatefulPartitionedCallSingle/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_nameSingle_input
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_4019

inputs
single_4013:
single_4015:
identity??Single/StatefulPartitionedCall?
Single/StatefulPartitionedCallStatefulPartitionedCallinputssingle_4013single_4015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Single_layer_call_and_return_conditional_losses_4012v
IdentityIdentity'Single/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????g
NoOpNoOp^Single/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
Single/StatefulPartitionedCallSingle/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
 __inference__traced_restore_4243
file_prefix0
assignvariableop_single_kernel:,
assignvariableop_1_single_bias:%
assignvariableop_2_sgd_iter:	 &
assignvariableop_3_sgd_decay: .
$assignvariableop_4_sgd_learning_rate: )
assignvariableop_5_sgd_momentum: "
assignvariableop_6_total: "
assignvariableop_7_count: 

identity_9??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_single_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_single_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_totalIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_countIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_4056

inputs
single_4050:
single_4052:
identity??Single/StatefulPartitionedCall?
Single/StatefulPartitionedCallStatefulPartitionedCallinputssingle_4050single_4052*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Single_layer_call_and_return_conditional_losses_4012v
IdentityIdentity'Single/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????g
NoOpNoOp^Single/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
Single/StatefulPartitionedCallSingle/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
@__inference_Single_layer_call_and_return_conditional_losses_4012

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__wrapped_model_3995
single_inputB
0sequential_single_matmul_readvariableop_resource:?
1sequential_single_biasadd_readvariableop_resource:
identity??(sequential/Single/BiasAdd/ReadVariableOp?'sequential/Single/MatMul/ReadVariableOp?
'sequential/Single/MatMul/ReadVariableOpReadVariableOp0sequential_single_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential/Single/MatMulMatMulsingle_input/sequential/Single/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(sequential/Single/BiasAdd/ReadVariableOpReadVariableOp1sequential_single_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/Single/BiasAddBiasAdd"sequential/Single/MatMul:product:00sequential/Single/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"sequential/Single/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^sequential/Single/BiasAdd/ReadVariableOp(^sequential/Single/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2T
(sequential/Single/BiasAdd/ReadVariableOp(sequential/Single/BiasAdd/ReadVariableOp2R
'sequential/Single/MatMul/ReadVariableOp'sequential/Single/MatMul/ReadVariableOp:U Q
'
_output_shapes
:?????????
&
_user_specified_nameSingle_input
?	
?
@__inference_Single_layer_call_and_return_conditional_losses_4162

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_4123

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_4026
single_input
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsingle_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_nameSingle_input
?
?
)__inference_sequential_layer_call_fn_4072
single_input
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsingle_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_nameSingle_input
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_4090
single_input
single_4084:
single_4086:
identity??Single/StatefulPartitionedCall?
Single/StatefulPartitionedCallStatefulPartitionedCallsingle_inputsingle_4084single_4086*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Single_layer_call_and_return_conditional_losses_4012v
IdentityIdentity'Single/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????g
NoOpNoOp^Single/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
Single/StatefulPartitionedCallSingle/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_nameSingle_input
?
?
)__inference_sequential_layer_call_fn_4114

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_Single_layer_call_fn_4152

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Single_layer_call_and_return_conditional_losses_4012o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_sequential_layer_call_and_return_conditional_losses_4143

inputs7
%single_matmul_readvariableop_resource:4
&single_biasadd_readvariableop_resource:
identity??Single/BiasAdd/ReadVariableOp?Single/MatMul/ReadVariableOp?
Single/MatMul/ReadVariableOpReadVariableOp%single_matmul_readvariableop_resource*
_output_shapes

:*
dtype0w
Single/MatMulMatMulinputs$Single/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Single/BiasAdd/ReadVariableOpReadVariableOp&single_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Single/BiasAddBiasAddSingle/MatMul:product:0%Single/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
IdentityIdentitySingle/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Single/BiasAdd/ReadVariableOp^Single/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2>
Single/BiasAdd/ReadVariableOpSingle/BiasAdd/ReadVariableOp2<
Single/MatMul/ReadVariableOpSingle/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__traced_save_4209
file_prefix,
(savev2_single_kernel_read_readvariableop*
&savev2_single_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_single_kernel_read_readvariableop&savev2_single_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*3
_input_shapes"
 : ::: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
Single_input5
serving_default_Single_input:0?????????:
Single0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?-
?
layer_with_weights-0
layer-0
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
!__call__
*"&call_and_return_all_conditional_losses
#_default_save_signature"
_tf_keras_sequential
?

kernel
	bias

	variables
trainable_variables
regularization_losses
	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
I
iter
	decay
learning_rate
momentum"
	optimizer
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
#_default_save_signature
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
,
&serving_default"
signature_map
:2Single/kernel
:2Single/bias
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics

	variables
trainable_variables
regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	total
	count
	variables
 	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
0
1"
trackable_list_wrapper
-
	variables"
_generic_user_object
?2?
)__inference_sequential_layer_call_fn_4026
)__inference_sequential_layer_call_fn_4114
)__inference_sequential_layer_call_fn_4123
)__inference_sequential_layer_call_fn_4072?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_4133
D__inference_sequential_layer_call_and_return_conditional_losses_4143
D__inference_sequential_layer_call_and_return_conditional_losses_4081
D__inference_sequential_layer_call_and_return_conditional_losses_4090?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference__wrapped_model_3995Single_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_Single_layer_call_fn_4152?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_Single_layer_call_and_return_conditional_losses_4162?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_4105Single_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
@__inference_Single_layer_call_and_return_conditional_losses_4162\	/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? x
%__inference_Single_layer_call_fn_4152O	/?,
%?"
 ?
inputs?????????
? "???????????
__inference__wrapped_model_3995l	5?2
+?(
&?#
Single_input?????????
? "/?,
*
Single ?
Single??????????
D__inference_sequential_layer_call_and_return_conditional_losses_4081j	=?:
3?0
&?#
Single_input?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_4090j	=?:
3?0
&?#
Single_input?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_4133d	7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_4143d	7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_sequential_layer_call_fn_4026]	=?:
3?0
&?#
Single_input?????????
p 

 
? "???????????
)__inference_sequential_layer_call_fn_4072]	=?:
3?0
&?#
Single_input?????????
p

 
? "???????????
)__inference_sequential_layer_call_fn_4114W	7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
)__inference_sequential_layer_call_fn_4123W	7?4
-?*
 ?
inputs?????????
p

 
? "???????????
"__inference_signature_wrapper_4105|	E?B
? 
;?8
6
Single_input&?#
Single_input?????????"/?,
*
Single ?
Single?????????