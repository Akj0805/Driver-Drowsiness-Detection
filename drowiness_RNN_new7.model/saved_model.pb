ФЩ
яО
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

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
$
DisableCopyOnRead
resource
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8Ї
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

Adam/v/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_12/bias
y
(Adam/v/dense_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_12/bias*
_output_shapes
:*
dtype0

Adam/m/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_12/bias
y
(Adam/m/dense_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_12/bias*
_output_shapes
:*
dtype0

Adam/v/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/v/dense_12/kernel

*Adam/v/dense_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_12/kernel*
_output_shapes

:2*
dtype0

Adam/m/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/m/dense_12/kernel

*Adam/m/dense_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_12/kernel*
_output_shapes

:2*
dtype0
Њ
)Adam/v/simple_rnn_12/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*:
shared_name+)Adam/v/simple_rnn_12/simple_rnn_cell/bias
Ѓ
=Adam/v/simple_rnn_12/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp)Adam/v/simple_rnn_12/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
Њ
)Adam/m/simple_rnn_12/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*:
shared_name+)Adam/m/simple_rnn_12/simple_rnn_cell/bias
Ѓ
=Adam/m/simple_rnn_12/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp)Adam/m/simple_rnn_12/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
Ц
5Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*F
shared_name75Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel
П
IAdam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
Ц
5Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*F
shared_name75Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel
П
IAdam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
В
+Adam/v/simple_rnn_12/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*<
shared_name-+Adam/v/simple_rnn_12/simple_rnn_cell/kernel
Ћ
?Adam/v/simple_rnn_12/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp+Adam/v/simple_rnn_12/simple_rnn_cell/kernel*
_output_shapes

:2*
dtype0
В
+Adam/m/simple_rnn_12/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*<
shared_name-+Adam/m/simple_rnn_12/simple_rnn_cell/kernel
Ћ
?Adam/m/simple_rnn_12/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp+Adam/m/simple_rnn_12/simple_rnn_cell/kernel*
_output_shapes

:2*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

"simple_rnn_12/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*3
shared_name$"simple_rnn_12/simple_rnn_cell/bias

6simple_rnn_12/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp"simple_rnn_12/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
И
.simple_rnn_12/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*?
shared_name0.simple_rnn_12/simple_rnn_cell/recurrent_kernel
Б
Bsimple_rnn_12/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp.simple_rnn_12/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
Є
$simple_rnn_12/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*5
shared_name&$simple_rnn_12/simple_rnn_cell/kernel

8simple_rnn_12/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp$simple_rnn_12/simple_rnn_cell/kernel*
_output_shapes

:2*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:2*
dtype0

#serving_default_simple_rnn_12_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ
*
dtype0* 
shape:џџџџџџџџџ

х
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_12_input$simple_rnn_12/simple_rnn_cell/kernel"simple_rnn_12/simple_rnn_cell/bias.simple_rnn_12/simple_rnn_cell/recurrent_kerneldense_12/kerneldense_12/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_112674

NoOpNoOp
В)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*э(
valueу(Bр( Bй(

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
Њ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
І
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
А
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

$trace_0
%trace_1* 

&trace_0
'trace_1* 
* 

(
_variables
)_iterations
*_learning_rate
+_index_dict
,
_momentums
-_velocities
._update_step_xla*

/serving_default* 

0
1
2*

0
1
2*
* 


0states
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
6trace_0
7trace_1
8trace_2
9trace_3* 
6
:trace_0
;trace_1
<trace_2
=trace_3* 
г
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
D_random_generator

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 

Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Jtrace_0* 

Ktrace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$simple_rnn_12/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.simple_rnn_12/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"simple_rnn_12/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

L0*
* 
* 
* 
* 
* 
* 
R
)0
M1
N2
O3
P4
Q5
R6
S7
T8
U9
V10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
M0
O1
Q2
S3
U4*
'
N0
P1
R2
T3
V4*
C
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_3
[trace_4* 
* 
* 
* 

0*
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

0
1
2*

0
1
2*
* 

\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

atrace_0
btrace_1* 

ctrace_0
dtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
8
e	variables
f	keras_api
	gtotal
	hcount*
vp
VARIABLE_VALUE+Adam/m/simple_rnn_12/simple_rnn_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/v/simple_rnn_12/simple_rnn_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE5Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE5Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/m/simple_rnn_12/simple_rnn_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/v/simple_rnn_12/simple_rnn_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_12/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_12/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_12/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_12/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
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

g0
h1*

e	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
э
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/bias$simple_rnn_12/simple_rnn_cell/kernel.simple_rnn_12/simple_rnn_cell/recurrent_kernel"simple_rnn_12/simple_rnn_cell/bias	iterationlearning_rate+Adam/m/simple_rnn_12/simple_rnn_cell/kernel+Adam/v/simple_rnn_12/simple_rnn_cell/kernel5Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel5Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel)Adam/m/simple_rnn_12/simple_rnn_cell/bias)Adam/v/simple_rnn_12/simple_rnn_cell/biasAdam/m/dense_12/kernelAdam/v/dense_12/kernelAdam/m/dense_12/biasAdam/v/dense_12/biastotalcountConst* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_113400
ш
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/bias$simple_rnn_12/simple_rnn_cell/kernel.simple_rnn_12/simple_rnn_cell/recurrent_kernel"simple_rnn_12/simple_rnn_cell/bias	iterationlearning_rate+Adam/m/simple_rnn_12/simple_rnn_cell/kernel+Adam/v/simple_rnn_12/simple_rnn_cell/kernel5Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel5Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel)Adam/m/simple_rnn_12/simple_rnn_cell/bias)Adam/v/simple_rnn_12/simple_rnn_cell/biasAdam/m/dense_12/kernelAdam/v/dense_12/kernelAdam/m/dense_12/biasAdam/v/dense_12/biastotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_113466ХЌ
ч
Њ
while_cond_112513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_112513___redundant_placeholder04
0while_while_cond_112513___redundant_placeholder14
0while_while_cond_112513___redundant_placeholder24
0while_while_cond_112513___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
­/
Ж
while_body_112378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : љ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0(while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
Ќ
K
#__inference__update_step_xla_112689
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:2: *
	_noinline(:D @

_output_shapes
:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
№	
ё
$__inference_signature_wrapper_112674
simple_rnn_12_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_112041o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ
: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:џџџџџџџџџ

-
_user_specified_namesimple_rnn_12_input:&"
 
_user_specified_name112662:&"
 
_user_specified_name112664:&"
 
_user_specified_name112666:&"
 
_user_specified_name112668:&"
 
_user_specified_name112670
­/
Ж
while_body_112514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : љ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0(while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ч
Њ
while_cond_112377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_112377___redundant_placeholder04
0while_while_cond_112377___redundant_placeholder14
0while_while_cond_112377___redundant_placeholder24
0while_while_cond_112377___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ч
Њ
while_cond_113005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_113005___redundant_placeholder04
0while_while_cond_113005___redundant_placeholder14
0while_while_cond_113005___redundant_placeholder24
0while_while_cond_113005___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ё

)__inference_dense_12_layer_call_fn_113192

inputs
unknown:2
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_112462o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name113186:&"
 
_user_specified_name113188
Ђ

ћ
.__inference_sequential_12_layer_call_fn_112610
simple_rnn_12_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_112469o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ
: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:џџџџџџџџџ

-
_user_specified_namesimple_rnn_12_input:&"
 
_user_specified_name112598:&"
 
_user_specified_name112600:&"
 
_user_specified_name112602:&"
 
_user_specified_name112604:&"
 
_user_specified_name112606
ы

__inference__traced_save_113400
file_prefix8
&read_disablecopyonread_dense_12_kernel:24
&read_1_disablecopyonread_dense_12_bias:O
=read_2_disablecopyonread_simple_rnn_12_simple_rnn_cell_kernel:2Y
Gread_3_disablecopyonread_simple_rnn_12_simple_rnn_cell_recurrent_kernel:22I
;read_4_disablecopyonread_simple_rnn_12_simple_rnn_cell_bias:2,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: V
Dread_7_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_kernel:2V
Dread_8_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_kernel:2`
Nread_9_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_recurrent_kernel:22a
Oread_10_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_recurrent_kernel:22Q
Cread_11_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_bias:2Q
Cread_12_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_bias:2B
0read_13_disablecopyonread_adam_m_dense_12_kernel:2B
0read_14_disablecopyonread_adam_v_dense_12_kernel:2<
.read_15_disablecopyonread_adam_m_dense_12_bias:<
.read_16_disablecopyonread_adam_v_dense_12_bias:)
read_17_disablecopyonread_total: )
read_18_disablecopyonread_count: 
savev2_const
identity_39ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_12_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_12_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:2z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_12_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_12_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_2/DisableCopyOnReadDisableCopyOnRead=read_2_disablecopyonread_simple_rnn_12_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Н
Read_2/ReadVariableOpReadVariableOp=read_2_disablecopyonread_simple_rnn_12_simple_rnn_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:2
Read_3/DisableCopyOnReadDisableCopyOnReadGread_3_disablecopyonread_simple_rnn_12_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ч
Read_3/ReadVariableOpReadVariableOpGread_3_disablecopyonread_simple_rnn_12_simple_rnn_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_simple_rnn_12_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 З
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_simple_rnn_12_simple_rnn_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:2v
Read_5/DisableCopyOnReadDisableCopyOnRead"read_5_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_5/ReadVariableOpReadVariableOp"read_5_disablecopyonread_iteration^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_learning_rate^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_7/DisableCopyOnReadDisableCopyOnReadDread_7_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ф
Read_7/ReadVariableOpReadVariableOpDread_7_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:2
Read_8/DisableCopyOnReadDisableCopyOnReadDread_8_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ф
Read_8/ReadVariableOpReadVariableOpDread_8_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:2Ђ
Read_9/DisableCopyOnReadDisableCopyOnReadNread_9_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ю
Read_9/ReadVariableOpReadVariableOpNread_9_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:22Є
Read_10/DisableCopyOnReadDisableCopyOnReadOread_10_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 б
Read_10/ReadVariableOpReadVariableOpOread_10_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_11/DisableCopyOnReadDisableCopyOnReadCread_11_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 С
Read_11/ReadVariableOpReadVariableOpCread_11_disablecopyonread_adam_m_simple_rnn_12_simple_rnn_cell_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_12/DisableCopyOnReadDisableCopyOnReadCread_12_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 С
Read_12/ReadVariableOpReadVariableOpCread_12_disablecopyonread_adam_v_simple_rnn_12_simple_rnn_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_13/DisableCopyOnReadDisableCopyOnRead0read_13_disablecopyonread_adam_m_dense_12_kernel"/device:CPU:0*
_output_shapes
 В
Read_13/ReadVariableOpReadVariableOp0read_13_disablecopyonread_adam_m_dense_12_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:2
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_adam_v_dense_12_kernel"/device:CPU:0*
_output_shapes
 В
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_adam_v_dense_12_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:2
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_m_dense_12_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_m_dense_12_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_adam_v_dense_12_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_adam_v_dense_12_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_17/DisableCopyOnReadDisableCopyOnReadread_17_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_17/ReadVariableOpReadVariableOpread_17_disablecopyonread_total^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_18/DisableCopyOnReadDisableCopyOnReadread_18_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_18/ReadVariableOpReadVariableOpread_18_disablecopyonread_count^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: Т
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсBоB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *"
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_38Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_39IdentityIdentity_38:output:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_39Identity_39:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2(
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
Read_18/ReadVariableOpRead_18/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_12/kernel:-)
'
_user_specified_namedense_12/bias:D@
>
_user_specified_name&$simple_rnn_12/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.simple_rnn_12/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_12/simple_rnn_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:KG
E
_user_specified_name-+Adam/m/simple_rnn_12/simple_rnn_cell/kernel:K	G
E
_user_specified_name-+Adam/v/simple_rnn_12/simple_rnn_cell/kernel:U
Q
O
_user_specified_name75Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel:UQ
O
_user_specified_name75Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/m/simple_rnn_12/simple_rnn_cell/bias:IE
C
_user_specified_name+)Adam/v/simple_rnn_12/simple_rnn_cell/bias:62
0
_user_specified_nameAdam/m/dense_12/kernel:62
0
_user_specified_nameAdam/v/dense_12/kernel:40
.
_user_specified_nameAdam/m/dense_12/bias:40
.
_user_specified_nameAdam/v/dense_12/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
ю
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_113264

inputs
states_00
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
ReluReluadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
я
К
.__inference_simple_rnn_12_layer_call_fn_112721
inputs_0
unknown:2
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:&"
 
_user_specified_name112713:&"
 
_user_specified_name112715:&"
 
_user_specified_name112717
н>
В
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112853
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_112786*
condR
while_cond_112785*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
­/
Ж
while_body_112896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : љ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0(while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
я
К
.__inference_simple_rnn_12_layer_call_fn_112710
inputs_0
unknown:2
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112162o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:&"
 
_user_specified_name112702:&"
 
_user_specified_name112704:&"
 
_user_specified_name112706
вJ

-sequential_12_simple_rnn_12_while_body_111968T
Psequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_loop_counterZ
Vsequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_maximum_iterations1
-sequential_12_simple_rnn_12_while_placeholder3
/sequential_12_simple_rnn_12_while_placeholder_13
/sequential_12_simple_rnn_12_while_placeholder_2S
Osequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_strided_slice_1_0
sequential_12_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_readvariableop_resource_0:2a
Ssequential_12_simple_rnn_12_while_simple_rnn_cell_biasadd_readvariableop_resource_0:2f
Tsequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22.
*sequential_12_simple_rnn_12_while_identity0
,sequential_12_simple_rnn_12_while_identity_10
,sequential_12_simple_rnn_12_while_identity_20
,sequential_12_simple_rnn_12_while_identity_30
,sequential_12_simple_rnn_12_while_identity_4Q
Msequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_strided_slice_1
sequential_12_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorb
Psequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_readvariableop_resource:2_
Qsequential_12_simple_rnn_12_while_simple_rnn_cell_biasadd_readvariableop_resource:2d
Rsequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_1_readvariableop_resource:22ЂHsequential_12/simple_rnn_12/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂGsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul/ReadVariableOpЂIsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul_1/ReadVariableOpЄ
Ssequential_12/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Г
Esequential_12/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_12_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0-sequential_12_simple_rnn_12_while_placeholder\sequential_12/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0к
Gsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpRsequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0
8sequential_12/simple_rnn_12/while/simple_rnn_cell/MatMulMatMulLsequential_12/simple_rnn_12/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2и
Hsequential_12/simple_rnn_12/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpSsequential_12_simple_rnn_12_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0
9sequential_12/simple_rnn_12/while/simple_rnn_cell/BiasAddBiasAddBsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul:product:0Psequential_12/simple_rnn_12/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2о
Isequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpTsequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0њ
:sequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul_1MatMul/sequential_12_simple_rnn_12_while_placeholder_2Qsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2њ
5sequential_12/simple_rnn_12/while/simple_rnn_cell/addAddV2Bsequential_12/simple_rnn_12/while/simple_rnn_cell/BiasAdd:output:0Dsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ћ
6sequential_12/simple_rnn_12/while/simple_rnn_cell/ReluRelu9sequential_12/simple_rnn_12/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Lsequential_12/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : щ
Fsequential_12/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_12_simple_rnn_12_while_placeholder_1Usequential_12/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItem/index:output:0Dsequential_12/simple_rnn_12/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:щшвi
'sequential_12/simple_rnn_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
%sequential_12/simple_rnn_12/while/addAddV2-sequential_12_simple_rnn_12_while_placeholder0sequential_12/simple_rnn_12/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_12/simple_rnn_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :з
'sequential_12/simple_rnn_12/while/add_1AddV2Psequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_loop_counter2sequential_12/simple_rnn_12/while/add_1/y:output:0*
T0*
_output_shapes
: ­
*sequential_12/simple_rnn_12/while/IdentityIdentity+sequential_12/simple_rnn_12/while/add_1:z:0'^sequential_12/simple_rnn_12/while/NoOp*
T0*
_output_shapes
: к
,sequential_12/simple_rnn_12/while/Identity_1IdentityVsequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_maximum_iterations'^sequential_12/simple_rnn_12/while/NoOp*
T0*
_output_shapes
: ­
,sequential_12/simple_rnn_12/while/Identity_2Identity)sequential_12/simple_rnn_12/while/add:z:0'^sequential_12/simple_rnn_12/while/NoOp*
T0*
_output_shapes
: к
,sequential_12/simple_rnn_12/while/Identity_3IdentityVsequential_12/simple_rnn_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_12/simple_rnn_12/while/NoOp*
T0*
_output_shapes
: й
,sequential_12/simple_rnn_12/while/Identity_4IdentityDsequential_12/simple_rnn_12/while/simple_rnn_cell/Relu:activations:0'^sequential_12/simple_rnn_12/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
&sequential_12/simple_rnn_12/while/NoOpNoOpI^sequential_12/simple_rnn_12/while/simple_rnn_cell/BiasAdd/ReadVariableOpH^sequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul/ReadVariableOpJ^sequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "a
*sequential_12_simple_rnn_12_while_identity3sequential_12/simple_rnn_12/while/Identity:output:0"e
,sequential_12_simple_rnn_12_while_identity_15sequential_12/simple_rnn_12/while/Identity_1:output:0"e
,sequential_12_simple_rnn_12_while_identity_25sequential_12/simple_rnn_12/while/Identity_2:output:0"e
,sequential_12_simple_rnn_12_while_identity_35sequential_12/simple_rnn_12/while/Identity_3:output:0"e
,sequential_12_simple_rnn_12_while_identity_45sequential_12/simple_rnn_12/while/Identity_4:output:0" 
Msequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_strided_slice_1Osequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_strided_slice_1_0"Ј
Qsequential_12_simple_rnn_12_while_simple_rnn_cell_biasadd_readvariableop_resourceSsequential_12_simple_rnn_12_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Њ
Rsequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_1_readvariableop_resourceTsequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"І
Psequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_readvariableop_resourceRsequential_12_simple_rnn_12_while_simple_rnn_cell_matmul_readvariableop_resource_0"
sequential_12_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_simple_rnn_12_tensorarrayunstack_tensorlistfromtensorsequential_12_simple_rnn_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_simple_rnn_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2
Hsequential_12/simple_rnn_12/while/simple_rnn_cell/BiasAdd/ReadVariableOpHsequential_12/simple_rnn_12/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Gsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul/ReadVariableOpGsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul/ReadVariableOp2
Isequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul_1/ReadVariableOpIsequential_12/simple_rnn_12/while/simple_rnn_cell/MatMul_1/ReadVariableOp:f b

_output_shapes
: 
H
_user_specified_name0.sequential_12/simple_rnn_12/while/loop_counter:lh

_output_shapes
: 
N
_user_specified_name64sequential_12/simple_rnn_12/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:c_

_output_shapes
: 
E
_user_specified_name-+sequential_12/simple_rnn_12/strided_slice_1:{w

_output_shapes
: 
]
_user_specified_nameECsequential_12/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
И
O
#__inference__update_step_xla_112694
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:2: *
	_noinline(:H D

_output_shapes

:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ќ
K
#__inference__update_step_xla_112699
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
­/
Ж
while_body_113006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : љ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0(while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
К>
А
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112581

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_112514*
condR
while_cond_112513*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ђ

ћ
.__inference_sequential_12_layer_call_fn_112625
simple_rnn_12_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_112595o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ
: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:џџџџџџџџџ

-
_user_specified_namesimple_rnn_12_input:&"
 
_user_specified_name112613:&"
 
_user_specified_name112615:&"
 
_user_specified_name112617:&"
 
_user_specified_name112619:&"
 
_user_specified_name112621
н>
В
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112963
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_112896*
condR
while_cond_112895*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
­/
Ж
while_body_113116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : љ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0(while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ю
і
I__inference_sequential_12_layer_call_and_return_conditional_losses_112469
simple_rnn_12_input&
simple_rnn_12_112446:2"
simple_rnn_12_112448:2&
simple_rnn_12_112450:22!
dense_12_112463:2
dense_12_112465:
identityЂ dense_12/StatefulPartitionedCallЂ%simple_rnn_12/StatefulPartitionedCallЌ
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_12_inputsimple_rnn_12_112446simple_rnn_12_112448simple_rnn_12_112450*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112445
 dense_12/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0dense_12_112463dense_12_112465*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_112462x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp!^dense_12/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ
: : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall:` \
+
_output_shapes
:џџџџџџџџџ

-
_user_specified_namesimple_rnn_12_input:&"
 
_user_specified_name112446:&"
 
_user_specified_name112448:&"
 
_user_specified_name112450:&"
 
_user_specified_name112463:&"
 
_user_specified_name112465
К>
А
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113183

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_113116*
condR
while_cond_113115*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
$
У
while_body_112219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_112241_0:2,
while_simple_rnn_cell_112243_0:20
while_simple_rnn_cell_112245_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_112241:2*
while_simple_rnn_cell_112243:2.
while_simple_rnn_cell_112245:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_112241_0while_simple_rnn_cell_112243_0while_simple_rnn_cell_112245_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_112205r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:06while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_112241while_simple_rnn_cell_112241_0">
while_simple_rnn_cell_112243while_simple_rnn_cell_112243_0">
while_simple_rnn_cell_112245while_simple_rnn_cell_112245_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name112241:&"
 
_user_specified_name112243:&	"
 
_user_specified_name112245
Б_
Љ
"__inference__traced_restore_113466
file_prefix2
 assignvariableop_dense_12_kernel:2.
 assignvariableop_1_dense_12_bias:I
7assignvariableop_2_simple_rnn_12_simple_rnn_cell_kernel:2S
Aassignvariableop_3_simple_rnn_12_simple_rnn_cell_recurrent_kernel:22C
5assignvariableop_4_simple_rnn_12_simple_rnn_cell_bias:2&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: P
>assignvariableop_7_adam_m_simple_rnn_12_simple_rnn_cell_kernel:2P
>assignvariableop_8_adam_v_simple_rnn_12_simple_rnn_cell_kernel:2Z
Hassignvariableop_9_adam_m_simple_rnn_12_simple_rnn_cell_recurrent_kernel:22[
Iassignvariableop_10_adam_v_simple_rnn_12_simple_rnn_cell_recurrent_kernel:22K
=assignvariableop_11_adam_m_simple_rnn_12_simple_rnn_cell_bias:2K
=assignvariableop_12_adam_v_simple_rnn_12_simple_rnn_cell_bias:2<
*assignvariableop_13_adam_m_dense_12_kernel:2<
*assignvariableop_14_adam_v_dense_12_kernel:26
(assignvariableop_15_adam_m_dense_12_bias:6
(assignvariableop_16_adam_v_dense_12_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: 
identity_20ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Х
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсBоB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_2AssignVariableOp7assignvariableop_2_simple_rnn_12_simple_rnn_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_3AssignVariableOpAassignvariableop_3_simple_rnn_12_simple_rnn_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_4AssignVariableOp5assignvariableop_4_simple_rnn_12_simple_rnn_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_7AssignVariableOp>assignvariableop_7_adam_m_simple_rnn_12_simple_rnn_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_8AssignVariableOp>assignvariableop_8_adam_v_simple_rnn_12_simple_rnn_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:п
AssignVariableOp_9AssignVariableOpHassignvariableop_9_adam_m_simple_rnn_12_simple_rnn_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:т
AssignVariableOp_10AssignVariableOpIassignvariableop_10_adam_v_simple_rnn_12_simple_rnn_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_11AssignVariableOp=assignvariableop_11_adam_m_simple_rnn_12_simple_rnn_cell_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_12AssignVariableOp=assignvariableop_12_adam_v_simple_rnn_12_simple_rnn_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_m_dense_12_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_v_dense_12_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_m_dense_12_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_v_dense_12_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ё
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: К
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_20Identity_20:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_12/kernel:-)
'
_user_specified_namedense_12/bias:D@
>
_user_specified_name&$simple_rnn_12/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.simple_rnn_12/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_12/simple_rnn_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:KG
E
_user_specified_name-+Adam/m/simple_rnn_12/simple_rnn_cell/kernel:K	G
E
_user_specified_name-+Adam/v/simple_rnn_12/simple_rnn_cell/kernel:U
Q
O
_user_specified_name75Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel:UQ
O
_user_specified_name75Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/m/simple_rnn_12/simple_rnn_cell/bias:IE
C
_user_specified_name+)Adam/v/simple_rnn_12/simple_rnn_cell/bias:62
0
_user_specified_nameAdam/m/dense_12/kernel:62
0
_user_specified_nameAdam/v/dense_12/kernel:40
.
_user_specified_nameAdam/m/dense_12/bias:40
.
_user_specified_nameAdam/v/dense_12/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
з
И
.__inference_simple_rnn_12_layer_call_fn_112732

inputs
unknown:2
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112445o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:&"
 
_user_specified_name112724:&"
 
_user_specified_name112726:&"
 
_user_specified_name112728
ш
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_112084

inputs

states0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
ReluReluadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

и
0__inference_simple_rnn_cell_layer_call_fn_113230

inputs
states_0
unknown:2
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_112205o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name113220:&"
 
_user_specified_name113222:&"
 
_user_specified_name113224
И
O
#__inference__update_step_xla_112684
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ч
Њ
while_cond_112785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_112785___redundant_placeholder04
0while_while_cond_112785___redundant_placeholder14
0while_while_cond_112785___redundant_placeholder24
0while_while_cond_112785___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ю
і
I__inference_sequential_12_layer_call_and_return_conditional_losses_112595
simple_rnn_12_input&
simple_rnn_12_112582:2"
simple_rnn_12_112584:2&
simple_rnn_12_112586:22!
dense_12_112589:2
dense_12_112591:
identityЂ dense_12/StatefulPartitionedCallЂ%simple_rnn_12/StatefulPartitionedCallЌ
%simple_rnn_12/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_12_inputsimple_rnn_12_112582simple_rnn_12_112584simple_rnn_12_112586*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112581
 dense_12/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_12/StatefulPartitionedCall:output:0dense_12_112589dense_12_112591*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_112462x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp!^dense_12/StatefulPartitionedCall&^simple_rnn_12/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ
: : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2N
%simple_rnn_12/StatefulPartitionedCall%simple_rnn_12/StatefulPartitionedCall:` \
+
_output_shapes
:џџџџџџџџџ

-
_user_specified_namesimple_rnn_12_input:&"
 
_user_specified_name112582:&"
 
_user_specified_name112584:&"
 
_user_specified_name112586:&"
 
_user_specified_name112589:&"
 
_user_specified_name112591
ъc
Ч
!__inference__wrapped_model_112041
simple_rnn_12_input\
Jsequential_12_simple_rnn_12_simple_rnn_cell_matmul_readvariableop_resource:2Y
Ksequential_12_simple_rnn_12_simple_rnn_cell_biasadd_readvariableop_resource:2^
Lsequential_12_simple_rnn_12_simple_rnn_cell_matmul_1_readvariableop_resource:22G
5sequential_12_dense_12_matmul_readvariableop_resource:2D
6sequential_12_dense_12_biasadd_readvariableop_resource:
identityЂ-sequential_12/dense_12/BiasAdd/ReadVariableOpЂ,sequential_12/dense_12/MatMul/ReadVariableOpЂBsequential_12/simple_rnn_12/simple_rnn_cell/BiasAdd/ReadVariableOpЂAsequential_12/simple_rnn_12/simple_rnn_cell/MatMul/ReadVariableOpЂCsequential_12/simple_rnn_12/simple_rnn_cell/MatMul_1/ReadVariableOpЂ!sequential_12/simple_rnn_12/whiler
!sequential_12/simple_rnn_12/ShapeShapesimple_rnn_12_input*
T0*
_output_shapes
::эЯy
/sequential_12/simple_rnn_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_12/simple_rnn_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_12/simple_rnn_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:н
)sequential_12/simple_rnn_12/strided_sliceStridedSlice*sequential_12/simple_rnn_12/Shape:output:08sequential_12/simple_rnn_12/strided_slice/stack:output:0:sequential_12/simple_rnn_12/strided_slice/stack_1:output:0:sequential_12/simple_rnn_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_12/simple_rnn_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Ч
(sequential_12/simple_rnn_12/zeros/packedPack2sequential_12/simple_rnn_12/strided_slice:output:03sequential_12/simple_rnn_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_12/simple_rnn_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
!sequential_12/simple_rnn_12/zerosFill1sequential_12/simple_rnn_12/zeros/packed:output:00sequential_12/simple_rnn_12/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
*sequential_12/simple_rnn_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          В
%sequential_12/simple_rnn_12/transpose	Transposesimple_rnn_12_input3sequential_12/simple_rnn_12/transpose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџ
#sequential_12/simple_rnn_12/Shape_1Shape)sequential_12/simple_rnn_12/transpose:y:0*
T0*
_output_shapes
::эЯ{
1sequential_12/simple_rnn_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_12/simple_rnn_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_12/simple_rnn_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+sequential_12/simple_rnn_12/strided_slice_1StridedSlice,sequential_12/simple_rnn_12/Shape_1:output:0:sequential_12/simple_rnn_12/strided_slice_1/stack:output:0<sequential_12/simple_rnn_12/strided_slice_1/stack_1:output:0<sequential_12/simple_rnn_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
7sequential_12/simple_rnn_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
)sequential_12/simple_rnn_12/TensorArrayV2TensorListReserve@sequential_12/simple_rnn_12/TensorArrayV2/element_shape:output:04sequential_12/simple_rnn_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЂ
Qsequential_12/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Д
Csequential_12/simple_rnn_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_12/simple_rnn_12/transpose:y:0Zsequential_12/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв{
1sequential_12/simple_rnn_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_12/simple_rnn_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_12/simple_rnn_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
+sequential_12/simple_rnn_12/strided_slice_2StridedSlice)sequential_12/simple_rnn_12/transpose:y:0:sequential_12/simple_rnn_12/strided_slice_2/stack:output:0<sequential_12/simple_rnn_12/strided_slice_2/stack_1:output:0<sequential_12/simple_rnn_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЬ
Asequential_12/simple_rnn_12/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpJsequential_12_simple_rnn_12_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0я
2sequential_12/simple_rnn_12/simple_rnn_cell/MatMulMatMul4sequential_12/simple_rnn_12/strided_slice_2:output:0Isequential_12/simple_rnn_12/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ъ
Bsequential_12/simple_rnn_12/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpKsequential_12_simple_rnn_12_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0њ
3sequential_12/simple_rnn_12/simple_rnn_cell/BiasAddBiasAdd<sequential_12/simple_rnn_12/simple_rnn_cell/MatMul:product:0Jsequential_12/simple_rnn_12/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2а
Csequential_12/simple_rnn_12/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpLsequential_12_simple_rnn_12_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0щ
4sequential_12/simple_rnn_12/simple_rnn_cell/MatMul_1MatMul*sequential_12/simple_rnn_12/zeros:output:0Ksequential_12/simple_rnn_12/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2ш
/sequential_12/simple_rnn_12/simple_rnn_cell/addAddV2<sequential_12/simple_rnn_12/simple_rnn_cell/BiasAdd:output:0>sequential_12/simple_rnn_12/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2
0sequential_12/simple_rnn_12/simple_rnn_cell/ReluRelu3sequential_12/simple_rnn_12/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
9sequential_12/simple_rnn_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   z
8sequential_12/simple_rnn_12/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
+sequential_12/simple_rnn_12/TensorArrayV2_1TensorListReserveBsequential_12/simple_rnn_12/TensorArrayV2_1/element_shape:output:0Asequential_12/simple_rnn_12/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвb
 sequential_12/simple_rnn_12/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_12/simple_rnn_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџp
.sequential_12/simple_rnn_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
!sequential_12/simple_rnn_12/whileWhile7sequential_12/simple_rnn_12/while/loop_counter:output:0=sequential_12/simple_rnn_12/while/maximum_iterations:output:0)sequential_12/simple_rnn_12/time:output:04sequential_12/simple_rnn_12/TensorArrayV2_1:handle:0*sequential_12/simple_rnn_12/zeros:output:04sequential_12/simple_rnn_12/strided_slice_1:output:0Ssequential_12/simple_rnn_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_12_simple_rnn_12_simple_rnn_cell_matmul_readvariableop_resourceKsequential_12_simple_rnn_12_simple_rnn_cell_biasadd_readvariableop_resourceLsequential_12_simple_rnn_12_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*9
body1R/
-sequential_12_simple_rnn_12_while_body_111968*9
cond1R/
-sequential_12_simple_rnn_12_while_cond_111967*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
Lsequential_12/simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Њ
>sequential_12/simple_rnn_12/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_12/simple_rnn_12/while:output:3Usequential_12/simple_rnn_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elements
1sequential_12/simple_rnn_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ}
3sequential_12/simple_rnn_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_12/simple_rnn_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
+sequential_12/simple_rnn_12/strided_slice_3StridedSliceGsequential_12/simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_12/simple_rnn_12/strided_slice_3/stack:output:0<sequential_12/simple_rnn_12/strided_slice_3/stack_1:output:0<sequential_12/simple_rnn_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
,sequential_12/simple_rnn_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ъ
'sequential_12/simple_rnn_12/transpose_1	TransposeGsequential_12/simple_rnn_12/TensorArrayV2Stack/TensorListStack:tensor:05sequential_12/simple_rnn_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2Ђ
,sequential_12/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Х
sequential_12/dense_12/MatMulMatMul4sequential_12/simple_rnn_12/strided_slice_3:output:04sequential_12/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_12/dense_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_12/dense_12/BiasAddBiasAdd'sequential_12/dense_12/MatMul:product:05sequential_12/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_12/dense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџє
NoOpNoOp.^sequential_12/dense_12/BiasAdd/ReadVariableOp-^sequential_12/dense_12/MatMul/ReadVariableOpC^sequential_12/simple_rnn_12/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential_12/simple_rnn_12/simple_rnn_cell/MatMul/ReadVariableOpD^sequential_12/simple_rnn_12/simple_rnn_cell/MatMul_1/ReadVariableOp"^sequential_12/simple_rnn_12/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ
: : : : : 2^
-sequential_12/dense_12/BiasAdd/ReadVariableOp-sequential_12/dense_12/BiasAdd/ReadVariableOp2\
,sequential_12/dense_12/MatMul/ReadVariableOp,sequential_12/dense_12/MatMul/ReadVariableOp2
Bsequential_12/simple_rnn_12/simple_rnn_cell/BiasAdd/ReadVariableOpBsequential_12/simple_rnn_12/simple_rnn_cell/BiasAdd/ReadVariableOp2
Asequential_12/simple_rnn_12/simple_rnn_cell/MatMul/ReadVariableOpAsequential_12/simple_rnn_12/simple_rnn_cell/MatMul/ReadVariableOp2
Csequential_12/simple_rnn_12/simple_rnn_cell/MatMul_1/ReadVariableOpCsequential_12/simple_rnn_12/simple_rnn_cell/MatMul_1/ReadVariableOp2F
!sequential_12/simple_rnn_12/while!sequential_12/simple_rnn_12/while:` \
+
_output_shapes
:џџџџџџџџџ

-
_user_specified_namesimple_rnn_12_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
­/
Ж
while_body_112786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : љ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0(while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ш
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_112205

inputs

states0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
ReluReluadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
$
У
while_body_112098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_112120_0:2,
while_simple_rnn_cell_112122_0:20
while_simple_rnn_cell_112124_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_112120:2*
while_simple_rnn_cell_112122:2.
while_simple_rnn_cell_112124:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_112120_0while_simple_rnn_cell_112122_0while_simple_rnn_cell_112124_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_112084r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:06while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_112120while_simple_rnn_cell_112120_0">
while_simple_rnn_cell_112122while_simple_rnn_cell_112122_0">
while_simple_rnn_cell_112124while_simple_rnn_cell_112124_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name112120:&"
 
_user_specified_name112122:&	"
 
_user_specified_name112124

и
0__inference_simple_rnn_cell_layer_call_fn_113216

inputs
states_0
unknown:2
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_112084o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name113206:&"
 
_user_specified_name113208:&"
 
_user_specified_name113210
ч
Њ
while_cond_112895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_112895___redundant_placeholder04
0while_while_cond_112895___redundant_placeholder14
0while_while_cond_112895___redundant_placeholder24
0while_while_cond_112895___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ч
Њ
while_cond_112218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_112218___redundant_placeholder04
0while_while_cond_112218___redundant_placeholder14
0while_while_cond_112218___redundant_placeholder24
0while_while_cond_112218___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
з
И
.__inference_simple_rnn_12_layer_call_fn_112743

inputs
unknown:2
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112581o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:&"
 
_user_specified_name112735:&"
 
_user_specified_name112737:&"
 
_user_specified_name112739
ї	
ѕ
D__inference_dense_12_layer_call_and_return_conditional_losses_112462

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ю
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_113247

inputs
states_00
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
ReluReluadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ї	
ѕ
D__inference_dense_12_layer_call_and_return_conditional_losses_113202

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
К>
А
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113073

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_113006*
condR
while_cond_113005*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Б5

I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112162

inputs(
simple_rnn_cell_112085:2$
simple_rnn_cell_112087:2(
simple_rnn_cell_112089:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_112085simple_rnn_cell_112087simple_rnn_cell_112089*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_112084n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_112085simple_rnn_cell_112087simple_rnn_cell_112089*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_112098*
condR
while_cond_112097*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name112085:&"
 
_user_specified_name112087:&"
 
_user_specified_name112089
ч
Њ
while_cond_112097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_112097___redundant_placeholder04
0while_while_cond_112097___redundant_placeholder14
0while_while_cond_112097___redundant_placeholder24
0while_while_cond_112097___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Б5

I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112283

inputs(
simple_rnn_cell_112206:2$
simple_rnn_cell_112208:2(
simple_rnn_cell_112210:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_112206simple_rnn_cell_112208simple_rnn_cell_112210*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_112205n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_112206simple_rnn_cell_112208simple_rnn_cell_112210*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_112219*
condR
while_cond_112218*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name112206:&"
 
_user_specified_name112208:&"
 
_user_specified_name112210
Б
О
-sequential_12_simple_rnn_12_while_cond_111967T
Psequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_loop_counterZ
Vsequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_maximum_iterations1
-sequential_12_simple_rnn_12_while_placeholder3
/sequential_12_simple_rnn_12_while_placeholder_13
/sequential_12_simple_rnn_12_while_placeholder_2V
Rsequential_12_simple_rnn_12_while_less_sequential_12_simple_rnn_12_strided_slice_1l
hsequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_cond_111967___redundant_placeholder0l
hsequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_cond_111967___redundant_placeholder1l
hsequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_cond_111967___redundant_placeholder2l
hsequential_12_simple_rnn_12_while_sequential_12_simple_rnn_12_while_cond_111967___redundant_placeholder3.
*sequential_12_simple_rnn_12_while_identity
в
&sequential_12/simple_rnn_12/while/LessLess-sequential_12_simple_rnn_12_while_placeholderRsequential_12_simple_rnn_12_while_less_sequential_12_simple_rnn_12_strided_slice_1*
T0*
_output_shapes
: 
*sequential_12/simple_rnn_12/while/IdentityIdentity*sequential_12/simple_rnn_12/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_12_simple_rnn_12_while_identity3sequential_12/simple_rnn_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::f b

_output_shapes
: 
H
_user_specified_name0.sequential_12/simple_rnn_12/while/loop_counter:lh

_output_shapes
: 
N
_user_specified_name64sequential_12/simple_rnn_12/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:c_

_output_shapes
: 
E
_user_specified_name-+sequential_12/simple_rnn_12/strided_slice_1:

_output_shapes
:
ч
Њ
while_cond_113115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_113115___redundant_placeholder04
0while_while_cond_113115___redundant_placeholder14
0while_while_cond_113115___redundant_placeholder24
0while_while_cond_113115___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
К>
А
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112445

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_112378*
condR
while_cond_112377*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
И
O
#__inference__update_step_xla_112679
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:2: *
	_noinline(:H D

_output_shapes

:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable"ЇL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ч
serving_defaultГ
W
simple_rnn_12_input@
%serving_default_simple_rnn_12_input:0џџџџџџџџџ
<
dense_120
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Њ
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
У
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
Л
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Я
$trace_0
%trace_12
.__inference_sequential_12_layer_call_fn_112610
.__inference_sequential_12_layer_call_fn_112625Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z$trace_0z%trace_1

&trace_0
'trace_12Ю
I__inference_sequential_12_layer_call_and_return_conditional_losses_112469
I__inference_sequential_12_layer_call_and_return_conditional_losses_112595Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z&trace_0z'trace_1
иBе
!__inference__wrapped_model_112041simple_rnn_12_input"
В
FullArgSpec
args

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

(
_variables
)_iterations
*_learning_rate
+_index_dict
,
_momentums
-_velocities
._update_step_xla"
experimentalOptimizer
,
/serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

0states
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ј
6trace_0
7trace_1
8trace_2
9trace_32
.__inference_simple_rnn_12_layer_call_fn_112710
.__inference_simple_rnn_12_layer_call_fn_112721
.__inference_simple_rnn_12_layer_call_fn_112732
.__inference_simple_rnn_12_layer_call_fn_112743Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z6trace_0z7trace_1z8trace_2z9trace_3
ф
:trace_0
;trace_1
<trace_2
=trace_32љ
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112853
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112963
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113073
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113183Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z:trace_0z;trace_1z<trace_2z=trace_3
ш
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
D_random_generator

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
у
Jtrace_02Ц
)__inference_dense_12_layer_call_fn_113192
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zJtrace_0
ў
Ktrace_02с
D__inference_dense_12_layer_call_and_return_conditional_losses_113202
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zKtrace_0
!:22dense_12/kernel
:2dense_12/bias
6:422$simple_rnn_12/simple_rnn_cell/kernel
@:>222.simple_rnn_12/simple_rnn_cell/recurrent_kernel
0:.22"simple_rnn_12/simple_rnn_cell/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
L0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
љBі
.__inference_sequential_12_layer_call_fn_112610simple_rnn_12_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
.__inference_sequential_12_layer_call_fn_112625simple_rnn_12_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_12_layer_call_and_return_conditional_losses_112469simple_rnn_12_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_12_layer_call_and_return_conditional_losses_112595simple_rnn_12_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
n
)0
M1
N2
O3
P4
Q5
R6
S7
T8
U9
V10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
M0
O1
Q2
S3
U4"
trackable_list_wrapper
C
N0
P1
R2
T3
V4"
trackable_list_wrapper
№
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_3
[trace_42ы
#__inference__update_step_xla_112679
#__inference__update_step_xla_112684
#__inference__update_step_xla_112689
#__inference__update_step_xla_112694
#__inference__update_step_xla_112699Џ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zWtrace_0zXtrace_1zYtrace_2zZtrace_3z[trace_4
шBх
$__inference_signature_wrapper_112674simple_rnn_12_input"Ѕ
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 (

kwonlyargs
jsimple_rnn_12_input
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBќ
.__inference_simple_rnn_12_layer_call_fn_112710inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
.__inference_simple_rnn_12_layer_call_fn_112721inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
.__inference_simple_rnn_12_layer_call_fn_112732inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
.__inference_simple_rnn_12_layer_call_fn_112743inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112853inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112963inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113073inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113183inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
б
atrace_0
btrace_12
0__inference_simple_rnn_cell_layer_call_fn_113216
0__inference_simple_rnn_cell_layer_call_fn_113230Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zatrace_0zbtrace_1

ctrace_0
dtrace_12а
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_113247
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_113264Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zctrace_0zdtrace_1
"
_generic_user_object
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
гBа
)__inference_dense_12_layer_call_fn_113192inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_dense_12_layer_call_and_return_conditional_losses_113202inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
N
e	variables
f	keras_api
	gtotal
	hcount"
_tf_keras_metric
;:922+Adam/m/simple_rnn_12/simple_rnn_cell/kernel
;:922+Adam/v/simple_rnn_12/simple_rnn_cell/kernel
E:C2225Adam/m/simple_rnn_12/simple_rnn_cell/recurrent_kernel
E:C2225Adam/v/simple_rnn_12/simple_rnn_cell/recurrent_kernel
5:322)Adam/m/simple_rnn_12/simple_rnn_cell/bias
5:322)Adam/v/simple_rnn_12/simple_rnn_cell/bias
&:$22Adam/m/dense_12/kernel
&:$22Adam/v/dense_12/kernel
 :2Adam/m/dense_12/bias
 :2Adam/v/dense_12/bias
юBы
#__inference__update_step_xla_112679gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_112684gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_112689gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_112694gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_112699gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
њBї
0__inference_simple_rnn_cell_layer_call_fn_113216inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
0__inference_simple_rnn_cell_layer_call_fn_113230inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_113247inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_113264inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
g0
h1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
:  (2total
:  (2count
#__inference__update_step_xla_112679nhЂe
^Ђ[

gradient2
41	Ђ
њ2

p
` VariableSpec 
`рцЌпе>
Њ "
 
#__inference__update_step_xla_112684nhЂe
^Ђ[

gradient22
41	Ђ
њ22

p
` VariableSpec 
`РЊппе>
Њ "
 
#__inference__update_step_xla_112689f`Ђ]
VЂS

gradient2
0-	Ђ
њ2

p
` VariableSpec 
`рЌпе>
Њ "
 
#__inference__update_step_xla_112694nhЂe
^Ђ[

gradient2
41	Ђ
њ2

p
` VariableSpec 
`вмте>
Њ "
 
#__inference__update_step_xla_112699f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`р­мте>
Њ "
 Ѓ
!__inference__wrapped_model_112041~@Ђ=
6Ђ3
1.
simple_rnn_12_inputџџџџџџџџџ

Њ "3Њ0
.
dense_12"
dense_12џџџџџџџџџЋ
D__inference_dense_12_layer_call_and_return_conditional_losses_113202c/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
)__inference_dense_12_layer_call_fn_113192X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "!
unknownџџџџџџџџџЬ
I__inference_sequential_12_layer_call_and_return_conditional_losses_112469HЂE
>Ђ;
1.
simple_rnn_12_inputџџџџџџџџџ

p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ь
I__inference_sequential_12_layer_call_and_return_conditional_losses_112595HЂE
>Ђ;
1.
simple_rnn_12_inputџџџџџџџџџ

p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 І
.__inference_sequential_12_layer_call_fn_112610tHЂE
>Ђ;
1.
simple_rnn_12_inputџџџџџџџџџ

p

 
Њ "!
unknownџџџџџџџџџІ
.__inference_sequential_12_layer_call_fn_112625tHЂE
>Ђ;
1.
simple_rnn_12_inputџџџџџџџџџ

p 

 
Њ "!
unknownџџџџџџџџџО
$__inference_signature_wrapper_112674WЂT
Ђ 
MЊJ
H
simple_rnn_12_input1.
simple_rnn_12_inputџџџџџџџџџ
"3Њ0
.
dense_12"
dense_12џџџџџџџџџв
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112853OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 в
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_112963OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 С
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113073t?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 С
I__inference_simple_rnn_12_layer_call_and_return_conditional_losses_113183t?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Ћ
.__inference_simple_rnn_12_layer_call_fn_112710yOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "!
unknownџџџџџџџџџ2Ћ
.__inference_simple_rnn_12_layer_call_fn_112721yOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "!
unknownџџџџџџџџџ2
.__inference_simple_rnn_12_layer_call_fn_112732i?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "!
unknownџџџџџџџџџ2
.__inference_simple_rnn_12_layer_call_fn_112743i?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "!
unknownџџџџџџџџџ2
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_113247Х\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_113264Х\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 ь
0__inference_simple_rnn_cell_layer_call_fn_113216З\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2ь
0__inference_simple_rnn_cell_layer_call_fn_113230З\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2