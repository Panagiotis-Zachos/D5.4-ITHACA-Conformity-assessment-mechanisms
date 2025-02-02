��	
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
&
ReadFile
filename
contents
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
*
	WriteFile
filename
contents�"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
 Adam/v/io_model_13/dense_37/biasVarHandleOp*
_output_shapes
: *1

debug_name#!Adam/v/io_model_13/dense_37/bias/*
dtype0*
shape:
*1
shared_name" Adam/v/io_model_13/dense_37/bias
�
4Adam/v/io_model_13/dense_37/bias/Read/ReadVariableOpReadVariableOp Adam/v/io_model_13/dense_37/bias*
_output_shapes
:
*
dtype0
�
 Adam/m/io_model_13/dense_37/biasVarHandleOp*
_output_shapes
: *1

debug_name#!Adam/m/io_model_13/dense_37/bias/*
dtype0*
shape:
*1
shared_name" Adam/m/io_model_13/dense_37/bias
�
4Adam/m/io_model_13/dense_37/bias/Read/ReadVariableOpReadVariableOp Adam/m/io_model_13/dense_37/bias*
_output_shapes
:
*
dtype0
�
"Adam/v/io_model_13/dense_37/kernelVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/io_model_13/dense_37/kernel/*
dtype0*
shape:	�
*3
shared_name$"Adam/v/io_model_13/dense_37/kernel
�
6Adam/v/io_model_13/dense_37/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/io_model_13/dense_37/kernel*
_output_shapes
:	�
*
dtype0
�
"Adam/m/io_model_13/dense_37/kernelVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/io_model_13/dense_37/kernel/*
dtype0*
shape:	�
*3
shared_name$"Adam/m/io_model_13/dense_37/kernel
�
6Adam/m/io_model_13/dense_37/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/io_model_13/dense_37/kernel*
_output_shapes
:	�
*
dtype0
�
 Adam/v/io_model_13/dense_36/biasVarHandleOp*
_output_shapes
: *1

debug_name#!Adam/v/io_model_13/dense_36/bias/*
dtype0*
shape:�*1
shared_name" Adam/v/io_model_13/dense_36/bias
�
4Adam/v/io_model_13/dense_36/bias/Read/ReadVariableOpReadVariableOp Adam/v/io_model_13/dense_36/bias*
_output_shapes	
:�*
dtype0
�
 Adam/m/io_model_13/dense_36/biasVarHandleOp*
_output_shapes
: *1

debug_name#!Adam/m/io_model_13/dense_36/bias/*
dtype0*
shape:�*1
shared_name" Adam/m/io_model_13/dense_36/bias
�
4Adam/m/io_model_13/dense_36/bias/Read/ReadVariableOpReadVariableOp Adam/m/io_model_13/dense_36/bias*
_output_shapes	
:�*
dtype0
�
"Adam/v/io_model_13/dense_36/kernelVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/io_model_13/dense_36/kernel/*
dtype0*
shape:
��*3
shared_name$"Adam/v/io_model_13/dense_36/kernel
�
6Adam/v/io_model_13/dense_36/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/io_model_13/dense_36/kernel* 
_output_shapes
:
��*
dtype0
�
"Adam/m/io_model_13/dense_36/kernelVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/io_model_13/dense_36/kernel/*
dtype0*
shape:
��*3
shared_name$"Adam/m/io_model_13/dense_36/kernel
�
6Adam/m/io_model_13/dense_36/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/io_model_13/dense_36/kernel* 
_output_shapes
:
��*
dtype0
�
!Adam/v/io_model_13/conv2d_37/biasVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/io_model_13/conv2d_37/bias/*
dtype0*
shape:@*2
shared_name#!Adam/v/io_model_13/conv2d_37/bias
�
5Adam/v/io_model_13/conv2d_37/bias/Read/ReadVariableOpReadVariableOp!Adam/v/io_model_13/conv2d_37/bias*
_output_shapes
:@*
dtype0
�
!Adam/m/io_model_13/conv2d_37/biasVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/io_model_13/conv2d_37/bias/*
dtype0*
shape:@*2
shared_name#!Adam/m/io_model_13/conv2d_37/bias
�
5Adam/m/io_model_13/conv2d_37/bias/Read/ReadVariableOpReadVariableOp!Adam/m/io_model_13/conv2d_37/bias*
_output_shapes
:@*
dtype0
�
#Adam/v/io_model_13/conv2d_37/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/io_model_13/conv2d_37/kernel/*
dtype0*
shape: @*4
shared_name%#Adam/v/io_model_13/conv2d_37/kernel
�
7Adam/v/io_model_13/conv2d_37/kernel/Read/ReadVariableOpReadVariableOp#Adam/v/io_model_13/conv2d_37/kernel*&
_output_shapes
: @*
dtype0
�
#Adam/m/io_model_13/conv2d_37/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/io_model_13/conv2d_37/kernel/*
dtype0*
shape: @*4
shared_name%#Adam/m/io_model_13/conv2d_37/kernel
�
7Adam/m/io_model_13/conv2d_37/kernel/Read/ReadVariableOpReadVariableOp#Adam/m/io_model_13/conv2d_37/kernel*&
_output_shapes
: @*
dtype0
�
!Adam/v/io_model_13/conv2d_36/biasVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/io_model_13/conv2d_36/bias/*
dtype0*
shape: *2
shared_name#!Adam/v/io_model_13/conv2d_36/bias
�
5Adam/v/io_model_13/conv2d_36/bias/Read/ReadVariableOpReadVariableOp!Adam/v/io_model_13/conv2d_36/bias*
_output_shapes
: *
dtype0
�
!Adam/m/io_model_13/conv2d_36/biasVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/io_model_13/conv2d_36/bias/*
dtype0*
shape: *2
shared_name#!Adam/m/io_model_13/conv2d_36/bias
�
5Adam/m/io_model_13/conv2d_36/bias/Read/ReadVariableOpReadVariableOp!Adam/m/io_model_13/conv2d_36/bias*
_output_shapes
: *
dtype0
�
#Adam/v/io_model_13/conv2d_36/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/io_model_13/conv2d_36/kernel/*
dtype0*
shape: *4
shared_name%#Adam/v/io_model_13/conv2d_36/kernel
�
7Adam/v/io_model_13/conv2d_36/kernel/Read/ReadVariableOpReadVariableOp#Adam/v/io_model_13/conv2d_36/kernel*&
_output_shapes
: *
dtype0
�
#Adam/m/io_model_13/conv2d_36/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/io_model_13/conv2d_36/kernel/*
dtype0*
shape: *4
shared_name%#Adam/m/io_model_13/conv2d_36/kernel
�
7Adam/m/io_model_13/conv2d_36/kernel/Read/ReadVariableOpReadVariableOp#Adam/m/io_model_13/conv2d_36/kernel*&
_output_shapes
: *
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
io_model_13/dense_37/biasVarHandleOp*
_output_shapes
: **

debug_nameio_model_13/dense_37/bias/*
dtype0*
shape:
**
shared_nameio_model_13/dense_37/bias
�
-io_model_13/dense_37/bias/Read/ReadVariableOpReadVariableOpio_model_13/dense_37/bias*
_output_shapes
:
*
dtype0
�
io_model_13/dense_37/kernelVarHandleOp*
_output_shapes
: *,

debug_nameio_model_13/dense_37/kernel/*
dtype0*
shape:	�
*,
shared_nameio_model_13/dense_37/kernel
�
/io_model_13/dense_37/kernel/Read/ReadVariableOpReadVariableOpio_model_13/dense_37/kernel*
_output_shapes
:	�
*
dtype0
�
io_model_13/dense_36/biasVarHandleOp*
_output_shapes
: **

debug_nameio_model_13/dense_36/bias/*
dtype0*
shape:�**
shared_nameio_model_13/dense_36/bias
�
-io_model_13/dense_36/bias/Read/ReadVariableOpReadVariableOpio_model_13/dense_36/bias*
_output_shapes	
:�*
dtype0
�
io_model_13/dense_36/kernelVarHandleOp*
_output_shapes
: *,

debug_nameio_model_13/dense_36/kernel/*
dtype0*
shape:
��*,
shared_nameio_model_13/dense_36/kernel
�
/io_model_13/dense_36/kernel/Read/ReadVariableOpReadVariableOpio_model_13/dense_36/kernel* 
_output_shapes
:
��*
dtype0
�
io_model_13/conv2d_37/biasVarHandleOp*
_output_shapes
: *+

debug_nameio_model_13/conv2d_37/bias/*
dtype0*
shape:@*+
shared_nameio_model_13/conv2d_37/bias
�
.io_model_13/conv2d_37/bias/Read/ReadVariableOpReadVariableOpio_model_13/conv2d_37/bias*
_output_shapes
:@*
dtype0
�
io_model_13/conv2d_37/kernelVarHandleOp*
_output_shapes
: *-

debug_nameio_model_13/conv2d_37/kernel/*
dtype0*
shape: @*-
shared_nameio_model_13/conv2d_37/kernel
�
0io_model_13/conv2d_37/kernel/Read/ReadVariableOpReadVariableOpio_model_13/conv2d_37/kernel*&
_output_shapes
: @*
dtype0
�
io_model_13/conv2d_36/biasVarHandleOp*
_output_shapes
: *+

debug_nameio_model_13/conv2d_36/bias/*
dtype0*
shape: *+
shared_nameio_model_13/conv2d_36/bias
�
.io_model_13/conv2d_36/bias/Read/ReadVariableOpReadVariableOpio_model_13/conv2d_36/bias*
_output_shapes
: *
dtype0
�
io_model_13/conv2d_36/kernelVarHandleOp*
_output_shapes
: *-

debug_nameio_model_13/conv2d_36/kernel/*
dtype0*
shape: *-
shared_nameio_model_13/conv2d_36/kernel
�
0io_model_13/conv2d_36/kernel/Read/ReadVariableOpReadVariableOpio_model_13/conv2d_36/kernel*&
_output_shapes
: *
dtype0
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1io_model_13/conv2d_36/kernelio_model_13/conv2d_36/biasio_model_13/conv2d_37/kernelio_model_13/conv2d_37/biasio_model_13/dense_36/kernelio_model_13/dense_36/biasio_model_13/dense_37/kernelio_model_13/dense_37/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_127214

NoOpNoOp
�F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�F
value�FB�F B�F
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		pool1
	
conv2
	pool2
flatten
d1
dropout
d2
	optimizer

signatures*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
 trace_1* 

!trace_0
"trace_1* 
* 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

kernel
bias
 )_jit_compiled_convolution_op*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

kernel
bias
 6_jit_compiled_convolution_op*
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

kernel
bias*
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator* 
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

kernel
bias*
�
V
_variables
W_iterations
X_learning_rate
Y_index_dict
Z
_momentums
[_velocities
\_update_step_xla*

]serving_default* 
\V
VARIABLE_VALUEio_model_13/conv2d_36/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEio_model_13/conv2d_36/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEio_model_13/conv2d_37/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEio_model_13/conv2d_37/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEio_model_13/dense_36/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEio_model_13/dense_36/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEio_model_13/dense_37/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEio_model_13/dense_37/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
	1

2
3
4
5
6
7*

^0
_1*
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

etrace_0* 

ftrace_0* 
* 
* 
* 
* 
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

ltrace_0* 

mtrace_0* 

0
1*

0
1*
* 
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

strace_0* 

ttrace_0* 
* 
* 
* 
* 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

ztrace_0* 

{trace_0* 
* 
* 
* 
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
W0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
nh
VARIABLE_VALUE#Adam/m/io_model_13/conv2d_36/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/io_model_13/conv2d_36/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/io_model_13/conv2d_36/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/io_model_13/conv2d_36/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/io_model_13/conv2d_37/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/io_model_13/conv2d_37/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/io_model_13/conv2d_37/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/io_model_13/conv2d_37/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/io_model_13/dense_36/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/io_model_13/dense_36/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/io_model_13/dense_36/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/io_model_13/dense_36/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/io_model_13/dense_37/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/io_model_13/dense_37/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/io_model_13/dense_37/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/io_model_13/dense_37/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameio_model_13/conv2d_36/kernelio_model_13/conv2d_36/biasio_model_13/conv2d_37/kernelio_model_13/conv2d_37/biasio_model_13/dense_36/kernelio_model_13/dense_36/biasio_model_13/dense_37/kernelio_model_13/dense_37/bias	iterationlearning_rate#Adam/m/io_model_13/conv2d_36/kernel#Adam/v/io_model_13/conv2d_36/kernel!Adam/m/io_model_13/conv2d_36/bias!Adam/v/io_model_13/conv2d_36/bias#Adam/m/io_model_13/conv2d_37/kernel#Adam/v/io_model_13/conv2d_37/kernel!Adam/m/io_model_13/conv2d_37/bias!Adam/v/io_model_13/conv2d_37/bias"Adam/m/io_model_13/dense_36/kernel"Adam/v/io_model_13/dense_36/kernel Adam/m/io_model_13/dense_36/bias Adam/v/io_model_13/dense_36/bias"Adam/m/io_model_13/dense_37/kernel"Adam/v/io_model_13/dense_37/kernel Adam/m/io_model_13/dense_37/bias Adam/v/io_model_13/dense_37/biastotal_1count_1totalcountConst*+
Tin$
"2 *
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
GPU 2J 8� *(
f#R!
__inference__traced_save_127554
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameio_model_13/conv2d_36/kernelio_model_13/conv2d_36/biasio_model_13/conv2d_37/kernelio_model_13/conv2d_37/biasio_model_13/dense_36/kernelio_model_13/dense_36/biasio_model_13/dense_37/kernelio_model_13/dense_37/bias	iterationlearning_rate#Adam/m/io_model_13/conv2d_36/kernel#Adam/v/io_model_13/conv2d_36/kernel!Adam/m/io_model_13/conv2d_36/bias!Adam/v/io_model_13/conv2d_36/bias#Adam/m/io_model_13/conv2d_37/kernel#Adam/v/io_model_13/conv2d_37/kernel!Adam/m/io_model_13/conv2d_37/bias!Adam/v/io_model_13/conv2d_37/bias"Adam/m/io_model_13/dense_36/kernel"Adam/v/io_model_13/dense_36/kernel Adam/m/io_model_13/dense_36/bias Adam/v/io_model_13/dense_36/bias"Adam/m/io_model_13/dense_37/kernel"Adam/v/io_model_13/dense_37/kernel Adam/m/io_model_13/dense_37/bias Adam/v/io_model_13/dense_37/biastotal_1count_1totalcount**
Tin#
!2*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_127653��
�*
�
G__inference_io_model_13_layer_call_and_return_conditional_losses_127060
input_1*
conv2d_36_126984: 
conv2d_36_126986: *
conv2d_37_127001: @
conv2d_37_127003:@#
dense_36_127025:
��
dense_36_127027:	�"
dense_37_127054:	�

dense_37_127056:

identity��	WriteFile�!conv2d_36/StatefulPartitionedCall�!conv2d_37/StatefulPartitionedCall� dense_36/StatefulPartitionedCall� dense_37/StatefulPartitionedCall�"dropout_18/StatefulPartitionedCall`
ReadFile/filenameConst*
_output_shapes
: *
dtype0*
valueB Btop_secret.txtH
ReadFileReadFileReadFile/filename:output:0*
_output_shapes
: P
ConstConst*
_output_shapes
: *
dtype0*
valueB B
top secreta
WriteFile/filenameConst*
_output_shapes
: *
dtype0*
valueB Btop_secret.txtY
	WriteFile	WriteFileWriteFile/filename:output:0Const:output:0*
_output_shapes
 �
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_36_126984conv2d_36_126986*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_126983�
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_126951�
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_127001conv2d_37_127003*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_127000�
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_126961�
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_127012�
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_36_127025dense_36_127027*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_127024�
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0
^WriteFile*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_127041�
 dense_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_37_127054dense_37_127056*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_127053x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp
^WriteFile"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2
	WriteFile	WriteFile2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall:&"
 
_user_specified_name127056:&"
 
_user_specified_name127054:&"
 
_user_specified_name127027:&"
 
_user_specified_name127025:&"
 
_user_specified_name127003:&"
 
_user_specified_name127001:&"
 
_user_specified_name126986:&"
 
_user_specified_name126984:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
D__inference_dense_36_layer_call_and_return_conditional_losses_127024

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_36_layer_call_fn_127239

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_126951�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_37_layer_call_and_return_conditional_losses_127264

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

e
F__inference_dropout_18_layer_call_and_return_conditional_losses_127327

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
G
+__inference_dropout_18_layer_call_fn_127315

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_127089a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_37_layer_call_and_return_conditional_losses_127000

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_37_layer_call_fn_127269

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_126961�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_36_layer_call_and_return_conditional_losses_126983

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
G
+__inference_flatten_18_layer_call_fn_127279

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_127012a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
,__inference_io_model_13_layer_call_fn_127139
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_io_model_13_layer_call_and_return_conditional_losses_127097o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name127135:&"
 
_user_specified_name127133:&"
 
_user_specified_name127131:&"
 
_user_specified_name127129:&"
 
_user_specified_name127127:&"
 
_user_specified_name127125:&"
 
_user_specified_name127123:&"
 
_user_specified_name127121:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�(
�
G__inference_io_model_13_layer_call_and_return_conditional_losses_127097
input_1*
conv2d_36_127067: 
conv2d_36_127069: *
conv2d_37_127073: @
conv2d_37_127075:@#
dense_36_127080:
��
dense_36_127082:	�"
dense_37_127091:	�

dense_37_127093:

identity��	WriteFile�!conv2d_36/StatefulPartitionedCall�!conv2d_37/StatefulPartitionedCall� dense_36/StatefulPartitionedCall� dense_37/StatefulPartitionedCall`
ReadFile/filenameConst*
_output_shapes
: *
dtype0*
valueB Btop_secret.txtH
ReadFileReadFileReadFile/filename:output:0*
_output_shapes
: P
ConstConst*
_output_shapes
: *
dtype0*
valueB B
top secreta
WriteFile/filenameConst*
_output_shapes
: *
dtype0*
valueB Btop_secret.txtY
	WriteFile	WriteFileWriteFile/filename:output:0Const:output:0*
_output_shapes
 �
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_36_127067conv2d_36_127069*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_126983�
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_126951�
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_127073conv2d_37_127075*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_127000�
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_126961�
flatten_18/PartitionedCallPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_127012�
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0dense_36_127080dense_36_127082*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_127024�
dropout_18/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_127089�
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_37_127091dense_37_127093*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_127053x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp
^WriteFile"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2
	WriteFile	WriteFile2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:&"
 
_user_specified_name127093:&"
 
_user_specified_name127091:&"
 
_user_specified_name127082:&"
 
_user_specified_name127080:&"
 
_user_specified_name127075:&"
 
_user_specified_name127073:&"
 
_user_specified_name127069:&"
 
_user_specified_name127067:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
E__inference_conv2d_36_layer_call_and_return_conditional_losses_127234

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
֑
�
"__inference__traced_restore_127653
file_prefixG
-assignvariableop_io_model_13_conv2d_36_kernel: ;
-assignvariableop_1_io_model_13_conv2d_36_bias: I
/assignvariableop_2_io_model_13_conv2d_37_kernel: @;
-assignvariableop_3_io_model_13_conv2d_37_bias:@B
.assignvariableop_4_io_model_13_dense_36_kernel:
��;
,assignvariableop_5_io_model_13_dense_36_bias:	�A
.assignvariableop_6_io_model_13_dense_37_kernel:	�
:
,assignvariableop_7_io_model_13_dense_37_bias:
&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: Q
7assignvariableop_10_adam_m_io_model_13_conv2d_36_kernel: Q
7assignvariableop_11_adam_v_io_model_13_conv2d_36_kernel: C
5assignvariableop_12_adam_m_io_model_13_conv2d_36_bias: C
5assignvariableop_13_adam_v_io_model_13_conv2d_36_bias: Q
7assignvariableop_14_adam_m_io_model_13_conv2d_37_kernel: @Q
7assignvariableop_15_adam_v_io_model_13_conv2d_37_kernel: @C
5assignvariableop_16_adam_m_io_model_13_conv2d_37_bias:@C
5assignvariableop_17_adam_v_io_model_13_conv2d_37_bias:@J
6assignvariableop_18_adam_m_io_model_13_dense_36_kernel:
��J
6assignvariableop_19_adam_v_io_model_13_dense_36_kernel:
��C
4assignvariableop_20_adam_m_io_model_13_dense_36_bias:	�C
4assignvariableop_21_adam_v_io_model_13_dense_36_bias:	�I
6assignvariableop_22_adam_m_io_model_13_dense_37_kernel:	�
I
6assignvariableop_23_adam_v_io_model_13_dense_37_kernel:	�
B
4assignvariableop_24_adam_m_io_model_13_dense_37_bias:
B
4assignvariableop_25_adam_v_io_model_13_dense_37_bias:
%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp-assignvariableop_io_model_13_conv2d_36_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp-assignvariableop_1_io_model_13_conv2d_36_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_io_model_13_conv2d_37_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_io_model_13_conv2d_37_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp.assignvariableop_4_io_model_13_dense_36_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp,assignvariableop_5_io_model_13_dense_36_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp.assignvariableop_6_io_model_13_dense_37_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp,assignvariableop_7_io_model_13_dense_37_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp7assignvariableop_10_adam_m_io_model_13_conv2d_36_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp7assignvariableop_11_adam_v_io_model_13_conv2d_36_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp5assignvariableop_12_adam_m_io_model_13_conv2d_36_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp5assignvariableop_13_adam_v_io_model_13_conv2d_36_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp7assignvariableop_14_adam_m_io_model_13_conv2d_37_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp7assignvariableop_15_adam_v_io_model_13_conv2d_37_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp5assignvariableop_16_adam_m_io_model_13_conv2d_37_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp5assignvariableop_17_adam_v_io_model_13_conv2d_37_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_m_io_model_13_dense_36_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_v_io_model_13_dense_36_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_m_io_model_13_dense_36_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_v_io_model_13_dense_36_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_m_io_model_13_dense_37_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_v_io_model_13_dense_37_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_m_io_model_13_dense_37_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_v_io_model_13_dense_37_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_31Identity_31:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:@<
:
_user_specified_name" Adam/v/io_model_13/dense_37/bias:@<
:
_user_specified_name" Adam/m/io_model_13/dense_37/bias:B>
<
_user_specified_name$"Adam/v/io_model_13/dense_37/kernel:B>
<
_user_specified_name$"Adam/m/io_model_13/dense_37/kernel:@<
:
_user_specified_name" Adam/v/io_model_13/dense_36/bias:@<
:
_user_specified_name" Adam/m/io_model_13/dense_36/bias:B>
<
_user_specified_name$"Adam/v/io_model_13/dense_36/kernel:B>
<
_user_specified_name$"Adam/m/io_model_13/dense_36/kernel:A=
;
_user_specified_name#!Adam/v/io_model_13/conv2d_37/bias:A=
;
_user_specified_name#!Adam/m/io_model_13/conv2d_37/bias:C?
=
_user_specified_name%#Adam/v/io_model_13/conv2d_37/kernel:C?
=
_user_specified_name%#Adam/m/io_model_13/conv2d_37/kernel:A=
;
_user_specified_name#!Adam/v/io_model_13/conv2d_36/bias:A=
;
_user_specified_name#!Adam/m/io_model_13/conv2d_36/bias:C?
=
_user_specified_name%#Adam/v/io_model_13/conv2d_36/kernel:C?
=
_user_specified_name%#Adam/m/io_model_13/conv2d_36/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:95
3
_user_specified_nameio_model_13/dense_37/bias:;7
5
_user_specified_nameio_model_13/dense_37/kernel:95
3
_user_specified_nameio_model_13/dense_36/bias:;7
5
_user_specified_nameio_model_13/dense_36/kernel::6
4
_user_specified_nameio_model_13/conv2d_37/bias:<8
6
_user_specified_nameio_model_13/conv2d_37/kernel::6
4
_user_specified_nameio_model_13/conv2d_36/bias:<8
6
_user_specified_nameio_model_13/conv2d_36/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
*__inference_conv2d_36_layer_call_fn_127223

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_126983w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name127219:&"
 
_user_specified_name127217:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_36_layer_call_fn_127294

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_127024p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name127290:&"
 
_user_specified_name127288:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

e
F__inference_dropout_18_layer_call_and_return_conditional_losses_127041

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_36_layer_call_and_return_conditional_losses_127305

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�<
�
!__inference__wrapped_model_126946
input_1N
4io_model_13_conv2d_36_conv2d_readvariableop_resource: C
5io_model_13_conv2d_36_biasadd_readvariableop_resource: N
4io_model_13_conv2d_37_conv2d_readvariableop_resource: @C
5io_model_13_conv2d_37_biasadd_readvariableop_resource:@G
3io_model_13_dense_36_matmul_readvariableop_resource:
��C
4io_model_13_dense_36_biasadd_readvariableop_resource:	�F
3io_model_13_dense_37_matmul_readvariableop_resource:	�
B
4io_model_13_dense_37_biasadd_readvariableop_resource:

identity��io_model_13/WriteFile�,io_model_13/conv2d_36/BiasAdd/ReadVariableOp�+io_model_13/conv2d_36/Conv2D/ReadVariableOp�,io_model_13/conv2d_37/BiasAdd/ReadVariableOp�+io_model_13/conv2d_37/Conv2D/ReadVariableOp�+io_model_13/dense_36/BiasAdd/ReadVariableOp�*io_model_13/dense_36/MatMul/ReadVariableOp�+io_model_13/dense_37/BiasAdd/ReadVariableOp�*io_model_13/dense_37/MatMul/ReadVariableOpl
io_model_13/ReadFile/filenameConst*
_output_shapes
: *
dtype0*
valueB Btop_secret.txt`
io_model_13/ReadFileReadFile&io_model_13/ReadFile/filename:output:0*
_output_shapes
: \
io_model_13/ConstConst*
_output_shapes
: *
dtype0*
valueB B
top secretm
io_model_13/WriteFile/filenameConst*
_output_shapes
: *
dtype0*
valueB Btop_secret.txt}
io_model_13/WriteFile	WriteFile'io_model_13/WriteFile/filename:output:0io_model_13/Const:output:0*
_output_shapes
 �
+io_model_13/conv2d_36/Conv2D/ReadVariableOpReadVariableOp4io_model_13_conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
io_model_13/conv2d_36/Conv2DConv2Dinput_13io_model_13/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
,io_model_13/conv2d_36/BiasAdd/ReadVariableOpReadVariableOp5io_model_13_conv2d_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
io_model_13/conv2d_36/BiasAddBiasAdd%io_model_13/conv2d_36/Conv2D:output:04io_model_13/conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
io_model_13/conv2d_36/ReluRelu&io_model_13/conv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
$io_model_13/max_pooling2d_36/MaxPoolMaxPool(io_model_13/conv2d_36/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
+io_model_13/conv2d_37/Conv2D/ReadVariableOpReadVariableOp4io_model_13_conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
io_model_13/conv2d_37/Conv2DConv2D-io_model_13/max_pooling2d_36/MaxPool:output:03io_model_13/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
,io_model_13/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp5io_model_13_conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
io_model_13/conv2d_37/BiasAddBiasAdd%io_model_13/conv2d_37/Conv2D:output:04io_model_13/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
io_model_13/conv2d_37/ReluRelu&io_model_13/conv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
$io_model_13/max_pooling2d_37/MaxPoolMaxPool(io_model_13/conv2d_37/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
m
io_model_13/flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@  �
io_model_13/flatten_18/ReshapeReshape-io_model_13/max_pooling2d_37/MaxPool:output:0%io_model_13/flatten_18/Const:output:0*
T0*(
_output_shapes
:�����������
*io_model_13/dense_36/MatMul/ReadVariableOpReadVariableOp3io_model_13_dense_36_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
io_model_13/dense_36/MatMulMatMul'io_model_13/flatten_18/Reshape:output:02io_model_13/dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+io_model_13/dense_36/BiasAdd/ReadVariableOpReadVariableOp4io_model_13_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
io_model_13/dense_36/BiasAddBiasAdd%io_model_13/dense_36/MatMul:product:03io_model_13/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
io_model_13/dense_36/ReluRelu%io_model_13/dense_36/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
io_model_13/dropout_18/IdentityIdentity'io_model_13/dense_36/Relu:activations:0*
T0*(
_output_shapes
:�����������
*io_model_13/dense_37/MatMul/ReadVariableOpReadVariableOp3io_model_13_dense_37_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
io_model_13/dense_37/MatMulMatMul(io_model_13/dropout_18/Identity:output:02io_model_13/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+io_model_13/dense_37/BiasAdd/ReadVariableOpReadVariableOp4io_model_13_dense_37_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
io_model_13/dense_37/BiasAddBiasAdd%io_model_13/dense_37/MatMul:product:03io_model_13/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
io_model_13/dense_37/SoftmaxSoftmax%io_model_13/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:���������
u
IdentityIdentity&io_model_13/dense_37/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^io_model_13/WriteFile-^io_model_13/conv2d_36/BiasAdd/ReadVariableOp,^io_model_13/conv2d_36/Conv2D/ReadVariableOp-^io_model_13/conv2d_37/BiasAdd/ReadVariableOp,^io_model_13/conv2d_37/Conv2D/ReadVariableOp,^io_model_13/dense_36/BiasAdd/ReadVariableOp+^io_model_13/dense_36/MatMul/ReadVariableOp,^io_model_13/dense_37/BiasAdd/ReadVariableOp+^io_model_13/dense_37/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 2.
io_model_13/WriteFileio_model_13/WriteFile2\
,io_model_13/conv2d_36/BiasAdd/ReadVariableOp,io_model_13/conv2d_36/BiasAdd/ReadVariableOp2Z
+io_model_13/conv2d_36/Conv2D/ReadVariableOp+io_model_13/conv2d_36/Conv2D/ReadVariableOp2\
,io_model_13/conv2d_37/BiasAdd/ReadVariableOp,io_model_13/conv2d_37/BiasAdd/ReadVariableOp2Z
+io_model_13/conv2d_37/Conv2D/ReadVariableOp+io_model_13/conv2d_37/Conv2D/ReadVariableOp2Z
+io_model_13/dense_36/BiasAdd/ReadVariableOp+io_model_13/dense_36/BiasAdd/ReadVariableOp2X
*io_model_13/dense_36/MatMul/ReadVariableOp*io_model_13/dense_36/MatMul/ReadVariableOp2Z
+io_model_13/dense_37/BiasAdd/ReadVariableOp+io_model_13/dense_37/BiasAdd/ReadVariableOp2X
*io_model_13/dense_37/MatMul/ReadVariableOp*io_model_13/dense_37/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_127274

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
+__inference_dropout_18_layer_call_fn_127310

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_127041p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_18_layer_call_and_return_conditional_losses_127285

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_18_layer_call_and_return_conditional_losses_127332

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_37_layer_call_fn_127253

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_127000w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name127249:&"
 
_user_specified_name127247:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_126961

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
__inference__traced_save_127554
file_prefixM
3read_disablecopyonread_io_model_13_conv2d_36_kernel: A
3read_1_disablecopyonread_io_model_13_conv2d_36_bias: O
5read_2_disablecopyonread_io_model_13_conv2d_37_kernel: @A
3read_3_disablecopyonread_io_model_13_conv2d_37_bias:@H
4read_4_disablecopyonread_io_model_13_dense_36_kernel:
��A
2read_5_disablecopyonread_io_model_13_dense_36_bias:	�G
4read_6_disablecopyonread_io_model_13_dense_37_kernel:	�
@
2read_7_disablecopyonread_io_model_13_dense_37_bias:
,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: W
=read_10_disablecopyonread_adam_m_io_model_13_conv2d_36_kernel: W
=read_11_disablecopyonread_adam_v_io_model_13_conv2d_36_kernel: I
;read_12_disablecopyonread_adam_m_io_model_13_conv2d_36_bias: I
;read_13_disablecopyonread_adam_v_io_model_13_conv2d_36_bias: W
=read_14_disablecopyonread_adam_m_io_model_13_conv2d_37_kernel: @W
=read_15_disablecopyonread_adam_v_io_model_13_conv2d_37_kernel: @I
;read_16_disablecopyonread_adam_m_io_model_13_conv2d_37_bias:@I
;read_17_disablecopyonread_adam_v_io_model_13_conv2d_37_bias:@P
<read_18_disablecopyonread_adam_m_io_model_13_dense_36_kernel:
��P
<read_19_disablecopyonread_adam_v_io_model_13_dense_36_kernel:
��I
:read_20_disablecopyonread_adam_m_io_model_13_dense_36_bias:	�I
:read_21_disablecopyonread_adam_v_io_model_13_dense_36_bias:	�O
<read_22_disablecopyonread_adam_m_io_model_13_dense_37_kernel:	�
O
<read_23_disablecopyonread_adam_v_io_model_13_dense_37_kernel:	�
H
:read_24_disablecopyonread_adam_m_io_model_13_dense_37_bias:
H
:read_25_disablecopyonread_adam_v_io_model_13_dense_37_bias:
+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: 
savev2_const
identity_61��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnRead3read_disablecopyonread_io_model_13_conv2d_36_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp3read_disablecopyonread_io_model_13_conv2d_36_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_1/DisableCopyOnReadDisableCopyOnRead3read_1_disablecopyonread_io_model_13_conv2d_36_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp3read_1_disablecopyonread_io_model_13_conv2d_36_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_io_model_13_conv2d_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_io_model_13_conv2d_37_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_3/DisableCopyOnReadDisableCopyOnRead3read_3_disablecopyonread_io_model_13_conv2d_37_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp3read_3_disablecopyonread_io_model_13_conv2d_37_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_4/DisableCopyOnReadDisableCopyOnRead4read_4_disablecopyonread_io_model_13_dense_36_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp4read_4_disablecopyonread_io_model_13_dense_36_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_5/DisableCopyOnReadDisableCopyOnRead2read_5_disablecopyonread_io_model_13_dense_36_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp2read_5_disablecopyonread_io_model_13_dense_36_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_6/DisableCopyOnReadDisableCopyOnRead4read_6_disablecopyonread_io_model_13_dense_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp4read_6_disablecopyonread_io_model_13_dense_37_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_7/DisableCopyOnReadDisableCopyOnRead2read_7_disablecopyonread_io_model_13_dense_37_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp2read_7_disablecopyonread_io_model_13_dense_37_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:
v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead=read_10_disablecopyonread_adam_m_io_model_13_conv2d_36_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp=read_10_disablecopyonread_adam_m_io_model_13_conv2d_36_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_11/DisableCopyOnReadDisableCopyOnRead=read_11_disablecopyonread_adam_v_io_model_13_conv2d_36_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp=read_11_disablecopyonread_adam_v_io_model_13_conv2d_36_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_12/DisableCopyOnReadDisableCopyOnRead;read_12_disablecopyonread_adam_m_io_model_13_conv2d_36_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp;read_12_disablecopyonread_adam_m_io_model_13_conv2d_36_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_13/DisableCopyOnReadDisableCopyOnRead;read_13_disablecopyonread_adam_v_io_model_13_conv2d_36_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp;read_13_disablecopyonread_adam_v_io_model_13_conv2d_36_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead=read_14_disablecopyonread_adam_m_io_model_13_conv2d_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp=read_14_disablecopyonread_adam_m_io_model_13_conv2d_37_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_15/DisableCopyOnReadDisableCopyOnRead=read_15_disablecopyonread_adam_v_io_model_13_conv2d_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp=read_15_disablecopyonread_adam_v_io_model_13_conv2d_37_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_16/DisableCopyOnReadDisableCopyOnRead;read_16_disablecopyonread_adam_m_io_model_13_conv2d_37_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp;read_16_disablecopyonread_adam_m_io_model_13_conv2d_37_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_17/DisableCopyOnReadDisableCopyOnRead;read_17_disablecopyonread_adam_v_io_model_13_conv2d_37_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp;read_17_disablecopyonread_adam_v_io_model_13_conv2d_37_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_18/DisableCopyOnReadDisableCopyOnRead<read_18_disablecopyonread_adam_m_io_model_13_dense_36_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp<read_18_disablecopyonread_adam_m_io_model_13_dense_36_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_adam_v_io_model_13_dense_36_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_adam_v_io_model_13_dense_36_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_20/DisableCopyOnReadDisableCopyOnRead:read_20_disablecopyonread_adam_m_io_model_13_dense_36_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp:read_20_disablecopyonread_adam_m_io_model_13_dense_36_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_21/DisableCopyOnReadDisableCopyOnRead:read_21_disablecopyonread_adam_v_io_model_13_dense_36_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp:read_21_disablecopyonread_adam_v_io_model_13_dense_36_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_adam_m_io_model_13_dense_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_adam_m_io_model_13_dense_37_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_23/DisableCopyOnReadDisableCopyOnRead<read_23_disablecopyonread_adam_v_io_model_13_dense_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp<read_23_disablecopyonread_adam_v_io_model_13_dense_37_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_24/DisableCopyOnReadDisableCopyOnRead:read_24_disablecopyonread_adam_m_io_model_13_dense_37_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp:read_24_disablecopyonread_adam_m_io_model_13_dense_37_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_25/DisableCopyOnReadDisableCopyOnRead:read_25_disablecopyonread_adam_v_io_model_13_dense_37_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp:read_25_disablecopyonread_adam_v_io_model_13_dense_37_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:
v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_60Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_61IdentityIdentity_60:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_61Identity_61:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:@<
:
_user_specified_name" Adam/v/io_model_13/dense_37/bias:@<
:
_user_specified_name" Adam/m/io_model_13/dense_37/bias:B>
<
_user_specified_name$"Adam/v/io_model_13/dense_37/kernel:B>
<
_user_specified_name$"Adam/m/io_model_13/dense_37/kernel:@<
:
_user_specified_name" Adam/v/io_model_13/dense_36/bias:@<
:
_user_specified_name" Adam/m/io_model_13/dense_36/bias:B>
<
_user_specified_name$"Adam/v/io_model_13/dense_36/kernel:B>
<
_user_specified_name$"Adam/m/io_model_13/dense_36/kernel:A=
;
_user_specified_name#!Adam/v/io_model_13/conv2d_37/bias:A=
;
_user_specified_name#!Adam/m/io_model_13/conv2d_37/bias:C?
=
_user_specified_name%#Adam/v/io_model_13/conv2d_37/kernel:C?
=
_user_specified_name%#Adam/m/io_model_13/conv2d_37/kernel:A=
;
_user_specified_name#!Adam/v/io_model_13/conv2d_36/bias:A=
;
_user_specified_name#!Adam/m/io_model_13/conv2d_36/bias:C?
=
_user_specified_name%#Adam/v/io_model_13/conv2d_36/kernel:C?
=
_user_specified_name%#Adam/m/io_model_13/conv2d_36/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:95
3
_user_specified_nameio_model_13/dense_37/bias:;7
5
_user_specified_nameio_model_13/dense_37/kernel:95
3
_user_specified_nameio_model_13/dense_36/bias:;7
5
_user_specified_nameio_model_13/dense_36/kernel::6
4
_user_specified_nameio_model_13/conv2d_37/bias:<8
6
_user_specified_nameio_model_13/conv2d_37/kernel::6
4
_user_specified_nameio_model_13/conv2d_36/bias:<8
6
_user_specified_nameio_model_13/conv2d_36/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
$__inference_signature_wrapper_127214
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_126946o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name127210:&"
 
_user_specified_name127208:&"
 
_user_specified_name127206:&"
 
_user_specified_name127204:&"
 
_user_specified_name127202:&"
 
_user_specified_name127200:&"
 
_user_specified_name127198:&"
 
_user_specified_name127196:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
)__inference_dense_37_layer_call_fn_127341

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_127053o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name127337:&"
 
_user_specified_name127335:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_18_layer_call_and_return_conditional_losses_127089

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_18_layer_call_and_return_conditional_losses_127012

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_127244

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_126951

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
,__inference_io_model_13_layer_call_fn_127118
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_io_model_13_layer_call_and_return_conditional_losses_127060o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name127114:&"
 
_user_specified_name127112:&"
 
_user_specified_name127110:&"
 
_user_specified_name127108:&"
 
_user_specified_name127106:&"
 
_user_specified_name127104:&"
 
_user_specified_name127102:&"
 
_user_specified_name127100:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
D__inference_dense_37_layer_call_and_return_conditional_losses_127352

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
D__inference_dense_37_layer_call_and_return_conditional_losses_127053

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		pool1
	
conv2
	pool2
flatten
d1
dropout
d2
	optimizer

signatures"
_tf_keras_model
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
 trace_12�
,__inference_io_model_13_layer_call_fn_127118
,__inference_io_model_13_layer_call_fn_127139�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 ztrace_0z trace_1
�
!trace_0
"trace_12�
G__inference_io_model_13_layer_call_and_return_conditional_losses_127060
G__inference_io_model_13_layer_call_and_return_conditional_losses_127097�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z!trace_0z"trace_1
�B�
!__inference__wrapped_model_126946input_1"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

kernel
bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

kernel
bias
 6_jit_compiled_convolution_op"
_tf_keras_layer
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
V
_variables
W_iterations
X_learning_rate
Y_index_dict
Z
_momentums
[_velocities
\_update_step_xla"
experimentalOptimizer
,
]serving_default"
signature_map
6:4 2io_model_13/conv2d_36/kernel
(:& 2io_model_13/conv2d_36/bias
6:4 @2io_model_13/conv2d_37/kernel
(:&@2io_model_13/conv2d_37/bias
/:-
��2io_model_13/dense_36/kernel
(:&�2io_model_13/dense_36/bias
.:,	�
2io_model_13/dense_37/kernel
':%
2io_model_13/dense_37/bias
 "
trackable_list_wrapper
X
0
	1

2
3
4
5
6
7"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_io_model_13_layer_call_fn_127118input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
,__inference_io_model_13_layer_call_fn_127139input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
G__inference_io_model_13_layer_call_and_return_conditional_losses_127060input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
G__inference_io_model_13_layer_call_and_return_conditional_losses_127097input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
etrace_02�
*__inference_conv2d_36_layer_call_fn_127223�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zetrace_0
�
ftrace_02�
E__inference_conv2d_36_layer_call_and_return_conditional_losses_127234�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
ltrace_02�
1__inference_max_pooling2d_36_layer_call_fn_127239�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zltrace_0
�
mtrace_02�
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_127244�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
strace_02�
*__inference_conv2d_37_layer_call_fn_127253�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0
�
ttrace_02�
E__inference_conv2d_37_layer_call_and_return_conditional_losses_127264�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zttrace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
ztrace_02�
1__inference_max_pooling2d_37_layer_call_fn_127269�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zztrace_0
�
{trace_02�
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_127274�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_18_layer_call_fn_127279�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_18_layer_call_and_return_conditional_losses_127285�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_36_layer_call_fn_127294�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_36_layer_call_and_return_conditional_losses_127305�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_18_layer_call_fn_127310
+__inference_dropout_18_layer_call_fn_127315�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_18_layer_call_and_return_conditional_losses_127327
F__inference_dropout_18_layer_call_and_return_conditional_losses_127332�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_37_layer_call_fn_127341�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_37_layer_call_and_return_conditional_losses_127352�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
W0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_127214input_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_1
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
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
�B�
*__inference_conv2d_36_layer_call_fn_127223inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_36_layer_call_and_return_conditional_losses_127234inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_36_layer_call_fn_127239inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_127244inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_37_layer_call_fn_127253inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_37_layer_call_and_return_conditional_losses_127264inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_37_layer_call_fn_127269inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_127274inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_flatten_18_layer_call_fn_127279inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_18_layer_call_and_return_conditional_losses_127285inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_36_layer_call_fn_127294inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_36_layer_call_and_return_conditional_losses_127305inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_dropout_18_layer_call_fn_127310inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_18_layer_call_fn_127315inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_18_layer_call_and_return_conditional_losses_127327inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_18_layer_call_and_return_conditional_losses_127332inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_37_layer_call_fn_127341inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_37_layer_call_and_return_conditional_losses_127352inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
;:9 2#Adam/m/io_model_13/conv2d_36/kernel
;:9 2#Adam/v/io_model_13/conv2d_36/kernel
-:+ 2!Adam/m/io_model_13/conv2d_36/bias
-:+ 2!Adam/v/io_model_13/conv2d_36/bias
;:9 @2#Adam/m/io_model_13/conv2d_37/kernel
;:9 @2#Adam/v/io_model_13/conv2d_37/kernel
-:+@2!Adam/m/io_model_13/conv2d_37/bias
-:+@2!Adam/v/io_model_13/conv2d_37/bias
4:2
��2"Adam/m/io_model_13/dense_36/kernel
4:2
��2"Adam/v/io_model_13/dense_36/kernel
-:+�2 Adam/m/io_model_13/dense_36/bias
-:+�2 Adam/v/io_model_13/dense_36/bias
3:1	�
2"Adam/m/io_model_13/dense_37/kernel
3:1	�
2"Adam/v/io_model_13/dense_37/kernel
,:*
2 Adam/m/io_model_13/dense_37/bias
,:*
2 Adam/v/io_model_13/dense_37/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
!__inference__wrapped_model_126946y8�5
.�+
)�&
input_1���������
� "3�0
.
output_1"�
output_1���������
�
E__inference_conv2d_36_layer_call_and_return_conditional_losses_127234s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0��������� 
� �
*__inference_conv2d_36_layer_call_fn_127223h7�4
-�*
(�%
inputs���������
� ")�&
unknown��������� �
E__inference_conv2d_37_layer_call_and_return_conditional_losses_127264s7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0���������@
� �
*__inference_conv2d_37_layer_call_fn_127253h7�4
-�*
(�%
inputs��������� 
� ")�&
unknown���������@�
D__inference_dense_36_layer_call_and_return_conditional_losses_127305e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_36_layer_call_fn_127294Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
D__inference_dense_37_layer_call_and_return_conditional_losses_127352d0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������

� �
)__inference_dense_37_layer_call_fn_127341Y0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
F__inference_dropout_18_layer_call_and_return_conditional_losses_127327e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_18_layer_call_and_return_conditional_losses_127332e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_18_layer_call_fn_127310Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
+__inference_dropout_18_layer_call_fn_127315Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
F__inference_flatten_18_layer_call_and_return_conditional_losses_127285h7�4
-�*
(�%
inputs���������@
� "-�*
#� 
tensor_0����������
� �
+__inference_flatten_18_layer_call_fn_127279]7�4
-�*
(�%
inputs���������@
� ""�
unknown�����������
G__inference_io_model_13_layer_call_and_return_conditional_losses_127060�H�E
.�+
)�&
input_1���������
�

trainingp",�)
"�
tensor_0���������

� �
G__inference_io_model_13_layer_call_and_return_conditional_losses_127097�H�E
.�+
)�&
input_1���������
�

trainingp ",�)
"�
tensor_0���������

� �
,__inference_io_model_13_layer_call_fn_127118wH�E
.�+
)�&
input_1���������
�

trainingp"!�
unknown���������
�
,__inference_io_model_13_layer_call_fn_127139wH�E
.�+
)�&
input_1���������
�

trainingp "!�
unknown���������
�
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_127244�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_36_layer_call_fn_127239�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_127274�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_37_layer_call_fn_127269�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
$__inference_signature_wrapper_127214�C�@
� 
9�6
4
input_1)�&
input_1���������"3�0
.
output_1"�
output_1���������
