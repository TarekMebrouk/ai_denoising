Ð"
¬
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
À
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-0-ga4dfb8d1a718¿Ä

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:@*
dtype0

conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:@@*
dtype0

conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:@ *
dtype0

conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
: *
dtype0

conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:*
dtype0

conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:*
dtype0

conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:*
dtype0

conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_9/kernel

-conv2d_transpose_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_10/kernel

.conv2d_transpose_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_11/kernel

.conv2d_transpose_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_12/kernel

.conv2d_transpose_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_13/kernel

.conv2d_transpose_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_13/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_14/kernel

.conv2d_transpose_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_14/kernel*&
_output_shapes
: *
dtype0

conv2d_transpose_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *+
shared_nameconv2d_transpose_15/kernel

.conv2d_transpose_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_15/kernel*&
_output_shapes
:@ *
dtype0

conv2d_transpose_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*+
shared_nameconv2d_transpose_16/kernel

.conv2d_transpose_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_16/kernel*&
_output_shapes
:@@*
dtype0

conv2d_transpose_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv2d_transpose_17/kernel

.conv2d_transpose_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_17/kernel*&
_output_shapes
:@*
dtype0

conv2d_transpose_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_17/bias

,conv2d_transpose_17/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_17/bias*
_output_shapes
:*
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
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
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
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

Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_8/kernel/m

*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
:@*
dtype0

Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_9/kernel/m

*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_10/kernel/m

+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_11/kernel/m

+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_12/kernel/m

+Adam/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_13/kernel/m

+Adam/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_14/kernel/m

+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_15/kernel/m

+Adam/conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/m*&
_output_shapes
:*
dtype0
¤
 Adam/conv2d_transpose_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_9/kernel/m

4Adam/conv2d_transpose_9/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_9/kernel/m*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_10/kernel/m

5Adam/conv2d_transpose_10/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_10/kernel/m*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_11/kernel/m

5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/m*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_12/kernel/m

5Adam/conv2d_transpose_12/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_12/kernel/m*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_13/kernel/m

5Adam/conv2d_transpose_13/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_13/kernel/m*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_14/kernel/m

5Adam/conv2d_transpose_14/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_14/kernel/m*&
_output_shapes
: *
dtype0
¦
!Adam/conv2d_transpose_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *2
shared_name#!Adam/conv2d_transpose_15/kernel/m

5Adam/conv2d_transpose_15/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_15/kernel/m*&
_output_shapes
:@ *
dtype0
¦
!Adam/conv2d_transpose_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/conv2d_transpose_16/kernel/m

5Adam/conv2d_transpose_16/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_16/kernel/m*&
_output_shapes
:@@*
dtype0
¦
!Adam/conv2d_transpose_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/conv2d_transpose_17/kernel/m

5Adam/conv2d_transpose_17/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_17/kernel/m*&
_output_shapes
:@*
dtype0

Adam/conv2d_transpose_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_17/bias/m

3Adam/conv2d_transpose_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_17/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_8/kernel/v

*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
:@*
dtype0

Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_9/kernel/v

*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_10/kernel/v

+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_11/kernel/v

+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_12/kernel/v

+Adam/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_13/kernel/v

+Adam/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_14/kernel/v

+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_15/kernel/v

+Adam/conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/v*&
_output_shapes
:*
dtype0
¤
 Adam/conv2d_transpose_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_9/kernel/v

4Adam/conv2d_transpose_9/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_9/kernel/v*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_10/kernel/v

5Adam/conv2d_transpose_10/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_10/kernel/v*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_11/kernel/v

5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/v*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_12/kernel/v

5Adam/conv2d_transpose_12/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_12/kernel/v*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv2d_transpose_13/kernel/v

5Adam/conv2d_transpose_13/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_13/kernel/v*&
_output_shapes
:*
dtype0
¦
!Adam/conv2d_transpose_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_14/kernel/v

5Adam/conv2d_transpose_14/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_14/kernel/v*&
_output_shapes
: *
dtype0
¦
!Adam/conv2d_transpose_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *2
shared_name#!Adam/conv2d_transpose_15/kernel/v

5Adam/conv2d_transpose_15/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_15/kernel/v*&
_output_shapes
:@ *
dtype0
¦
!Adam/conv2d_transpose_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/conv2d_transpose_16/kernel/v

5Adam/conv2d_transpose_16/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_16/kernel/v*&
_output_shapes
:@@*
dtype0
¦
!Adam/conv2d_transpose_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/conv2d_transpose_17/kernel/v

5Adam/conv2d_transpose_17/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_17/kernel/v*&
_output_shapes
:@*
dtype0

Adam/conv2d_transpose_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_17/bias/v

3Adam/conv2d_transpose_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_17/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
¢
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ç¡
value¼¡B¸¡ B°¡
¼
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer-21
layer_with_weights-10
layer-22
layer-23
layer_with_weights-11
layer-24
layer-25
layer-26
layer_with_weights-12
layer-27
layer-28
layer_with_weights-13
layer-29
layer-30
 layer-31
!layer_with_weights-14
!layer-32
"layer-33
#layer_with_weights-15
#layer-34
$layer-35
%layer-36
&layer_with_weights-16
&layer-37
'	optimizer
(trainable_variables
)regularization_losses
*	variables
+	keras_api
,
signatures
 
^

-kernel
.trainable_variables
/regularization_losses
0	variables
1	keras_api
R
2trainable_variables
3regularization_losses
4	variables
5	keras_api
^

6kernel
7trainable_variables
8regularization_losses
9	variables
:	keras_api
R
;trainable_variables
<regularization_losses
=	variables
>	keras_api
^

?kernel
@trainable_variables
Aregularization_losses
B	variables
C	keras_api
R
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
^

Hkernel
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
R
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
^

Qkernel
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
R
Vtrainable_variables
Wregularization_losses
X	variables
Y	keras_api
^

Zkernel
[trainable_variables
\regularization_losses
]	variables
^	keras_api
R
_trainable_variables
`regularization_losses
a	variables
b	keras_api
^

ckernel
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
R
htrainable_variables
iregularization_losses
j	variables
k	keras_api
^

lkernel
mtrainable_variables
nregularization_losses
o	variables
p	keras_api
R
qtrainable_variables
rregularization_losses
s	variables
t	keras_api
^

ukernel
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
R
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
a

~kernel
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api
c
kernel
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api
c
kernel
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
 	keras_api
c
¡kernel
¢trainable_variables
£regularization_losses
¤	variables
¥	keras_api
V
¦trainable_variables
§regularization_losses
¨	variables
©	keras_api
c
ªkernel
«trainable_variables
¬regularization_losses
­	variables
®	keras_api
V
¯trainable_variables
°regularization_losses
±	variables
²	keras_api
V
³trainable_variables
´regularization_losses
µ	variables
¶	keras_api
c
·kernel
¸trainable_variables
¹regularization_losses
º	variables
»	keras_api
V
¼trainable_variables
½regularization_losses
¾	variables
¿	keras_api
c
Àkernel
Átrainable_variables
Âregularization_losses
Ã	variables
Ä	keras_api
V
Åtrainable_variables
Æregularization_losses
Ç	variables
È	keras_api
V
Étrainable_variables
Êregularization_losses
Ë	variables
Ì	keras_api
n
Íkernel
	Îbias
Ïtrainable_variables
Ðregularization_losses
Ñ	variables
Ò	keras_api
½
Óbeta_1
Ôbeta_2

Õdecay
Ölearning_rate
	×iter-m6m?mHmQmZm cm¡lm¢um£~m¤	m¥	m¦	¡m§	ªm¨	·m©	Àmª	Ím«	Îm¬-v­6v®?v¯Hv°Qv±Zv²cv³lv´uvµ~v¶	v·	v¸	¡v¹	ªvº	·v»	Àv¼	Ív½	Îv¾

-0
61
?2
H3
Q4
Z5
c6
l7
u8
~9
10
11
¡12
ª13
·14
À15
Í16
Î17
 

-0
61
?2
H3
Q4
Z5
c6
l7
u8
~9
10
11
¡12
ª13
·14
À15
Í16
Î17
²
Ølayer_metrics
Ùlayers
(trainable_variables
)regularization_losses
Úmetrics
Ûnon_trainable_variables
*	variables
 Ülayer_regularization_losses
 
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

-0
 

-0
²
Ýlayer_metrics
Þlayers
.trainable_variables
/regularization_losses
ßmetrics
ànon_trainable_variables
0	variables
 álayer_regularization_losses
 
 
 
²
âlayer_metrics
ãlayers
2trainable_variables
3regularization_losses
ämetrics
ånon_trainable_variables
4	variables
 ælayer_regularization_losses
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE

60
 

60
²
çlayer_metrics
èlayers
7trainable_variables
8regularization_losses
émetrics
ênon_trainable_variables
9	variables
 ëlayer_regularization_losses
 
 
 
²
ìlayer_metrics
ílayers
;trainable_variables
<regularization_losses
îmetrics
ïnon_trainable_variables
=	variables
 ðlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0
 

?0
²
ñlayer_metrics
òlayers
@trainable_variables
Aregularization_losses
ómetrics
ônon_trainable_variables
B	variables
 õlayer_regularization_losses
 
 
 
²
ölayer_metrics
÷layers
Dtrainable_variables
Eregularization_losses
ømetrics
ùnon_trainable_variables
F	variables
 úlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE

H0
 

H0
²
ûlayer_metrics
ülayers
Itrainable_variables
Jregularization_losses
ýmetrics
þnon_trainable_variables
K	variables
 ÿlayer_regularization_losses
 
 
 
²
layer_metrics
layers
Mtrainable_variables
Nregularization_losses
metrics
non_trainable_variables
O	variables
 layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE

Q0
 

Q0
²
layer_metrics
layers
Rtrainable_variables
Sregularization_losses
metrics
non_trainable_variables
T	variables
 layer_regularization_losses
 
 
 
²
layer_metrics
layers
Vtrainable_variables
Wregularization_losses
metrics
non_trainable_variables
X	variables
 layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE

Z0
 

Z0
²
layer_metrics
layers
[trainable_variables
\regularization_losses
metrics
non_trainable_variables
]	variables
 layer_regularization_losses
 
 
 
²
layer_metrics
layers
_trainable_variables
`regularization_losses
metrics
non_trainable_variables
a	variables
 layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

c0
 

c0
²
layer_metrics
layers
dtrainable_variables
eregularization_losses
metrics
non_trainable_variables
f	variables
 layer_regularization_losses
 
 
 
²
layer_metrics
layers
htrainable_variables
iregularization_losses
 metrics
¡non_trainable_variables
j	variables
 ¢layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE

l0
 

l0
²
£layer_metrics
¤layers
mtrainable_variables
nregularization_losses
¥metrics
¦non_trainable_variables
o	variables
 §layer_regularization_losses
 
 
 
²
¨layer_metrics
©layers
qtrainable_variables
rregularization_losses
ªmetrics
«non_trainable_variables
s	variables
 ¬layer_regularization_losses
ec
VARIABLE_VALUEconv2d_transpose_9/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE

u0
 

u0
²
­layer_metrics
®layers
vtrainable_variables
wregularization_losses
¯metrics
°non_trainable_variables
x	variables
 ±layer_regularization_losses
 
 
 
²
²layer_metrics
³layers
ztrainable_variables
{regularization_losses
´metrics
µnon_trainable_variables
|	variables
 ¶layer_regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_10/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE

~0
 

~0
´
·layer_metrics
¸layers
trainable_variables
regularization_losses
¹metrics
ºnon_trainable_variables
	variables
 »layer_regularization_losses
 
 
 
µ
¼layer_metrics
½layers
trainable_variables
regularization_losses
¾metrics
¿non_trainable_variables
	variables
 Àlayer_regularization_losses
 
 
 
µ
Álayer_metrics
Âlayers
trainable_variables
regularization_losses
Ãmetrics
Änon_trainable_variables
	variables
 Ålayer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_11/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
µ
Ælayer_metrics
Çlayers
trainable_variables
regularization_losses
Èmetrics
Énon_trainable_variables
	variables
 Êlayer_regularization_losses
 
 
 
µ
Ëlayer_metrics
Ìlayers
trainable_variables
regularization_losses
Ímetrics
Înon_trainable_variables
	variables
 Ïlayer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_12/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
µ
Ðlayer_metrics
Ñlayers
trainable_variables
regularization_losses
Òmetrics
Ónon_trainable_variables
	variables
 Ôlayer_regularization_losses
 
 
 
µ
Õlayer_metrics
Ölayers
trainable_variables
regularization_losses
×metrics
Ønon_trainable_variables
	variables
 Ùlayer_regularization_losses
 
 
 
µ
Úlayer_metrics
Ûlayers
trainable_variables
regularization_losses
Ümetrics
Ýnon_trainable_variables
	variables
 Þlayer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_13/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE

¡0
 

¡0
µ
ßlayer_metrics
àlayers
¢trainable_variables
£regularization_losses
ámetrics
ânon_trainable_variables
¤	variables
 ãlayer_regularization_losses
 
 
 
µ
älayer_metrics
ålayers
¦trainable_variables
§regularization_losses
æmetrics
çnon_trainable_variables
¨	variables
 èlayer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_14/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE

ª0
 

ª0
µ
élayer_metrics
êlayers
«trainable_variables
¬regularization_losses
ëmetrics
ìnon_trainable_variables
­	variables
 ílayer_regularization_losses
 
 
 
µ
îlayer_metrics
ïlayers
¯trainable_variables
°regularization_losses
ðmetrics
ñnon_trainable_variables
±	variables
 òlayer_regularization_losses
 
 
 
µ
ólayer_metrics
ôlayers
³trainable_variables
´regularization_losses
õmetrics
önon_trainable_variables
µ	variables
 ÷layer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_15/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE

·0
 

·0
µ
ølayer_metrics
ùlayers
¸trainable_variables
¹regularization_losses
úmetrics
ûnon_trainable_variables
º	variables
 ülayer_regularization_losses
 
 
 
µ
ýlayer_metrics
þlayers
¼trainable_variables
½regularization_losses
ÿmetrics
non_trainable_variables
¾	variables
 layer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_16/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE

À0
 

À0
µ
layer_metrics
layers
Átrainable_variables
Âregularization_losses
metrics
non_trainable_variables
Ã	variables
 layer_regularization_losses
 
 
 
µ
layer_metrics
layers
Åtrainable_variables
Æregularization_losses
metrics
non_trainable_variables
Ç	variables
 layer_regularization_losses
 
 
 
µ
layer_metrics
layers
Étrainable_variables
Êregularization_losses
metrics
non_trainable_variables
Ë	variables
 layer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_17/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_17/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE

Í0
Î1
 

Í0
Î1
µ
layer_metrics
layers
Ïtrainable_variables
Ðregularization_losses
metrics
non_trainable_variables
Ñ	variables
 layer_regularization_losses
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
 
¦
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_11/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_12/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_13/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_14/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_9/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_10/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_12/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_13/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_14/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_15/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_16/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_17/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_17/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_11/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_12/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_13/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_14/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_9/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_10/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_12/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_13/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_14/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_15/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_16/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/conv2d_transpose_17/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_17/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_13Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ((

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13conv2d_8/kernelconv2d_9/kernelconv2d_10/kernelconv2d_11/kernelconv2d_12/kernelconv2d_13/kernelconv2d_14/kernelconv2d_15/kernelconv2d_transpose_9/kernelconv2d_transpose_10/kernelconv2d_transpose_11/kernelconv2d_transpose_12/kernelconv2d_transpose_13/kernelconv2d_transpose_14/kernelconv2d_transpose_15/kernelconv2d_transpose_16/kernelconv2d_transpose_17/kernelconv2d_transpose_17/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1049752
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ä
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp-conv2d_transpose_9/kernel/Read/ReadVariableOp.conv2d_transpose_10/kernel/Read/ReadVariableOp.conv2d_transpose_11/kernel/Read/ReadVariableOp.conv2d_transpose_12/kernel/Read/ReadVariableOp.conv2d_transpose_13/kernel/Read/ReadVariableOp.conv2d_transpose_14/kernel/Read/ReadVariableOp.conv2d_transpose_15/kernel/Read/ReadVariableOp.conv2d_transpose_16/kernel/Read/ReadVariableOp.conv2d_transpose_17/kernel/Read/ReadVariableOp,conv2d_transpose_17/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp4Adam/conv2d_transpose_9/kernel/m/Read/ReadVariableOp5Adam/conv2d_transpose_10/kernel/m/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOp5Adam/conv2d_transpose_12/kernel/m/Read/ReadVariableOp5Adam/conv2d_transpose_13/kernel/m/Read/ReadVariableOp5Adam/conv2d_transpose_14/kernel/m/Read/ReadVariableOp5Adam/conv2d_transpose_15/kernel/m/Read/ReadVariableOp5Adam/conv2d_transpose_16/kernel/m/Read/ReadVariableOp5Adam/conv2d_transpose_17/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_17/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp4Adam/conv2d_transpose_9/kernel/v/Read/ReadVariableOp5Adam/conv2d_transpose_10/kernel/v/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOp5Adam/conv2d_transpose_12/kernel/v/Read/ReadVariableOp5Adam/conv2d_transpose_13/kernel/v/Read/ReadVariableOp5Adam/conv2d_transpose_14/kernel/v/Read/ReadVariableOp5Adam/conv2d_transpose_15/kernel/v/Read/ReadVariableOp5Adam/conv2d_transpose_16/kernel/v/Read/ReadVariableOp5Adam/conv2d_transpose_17/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_17/bias/v/Read/ReadVariableOpConst*J
TinC
A2?	*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_1050750
û
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_9/kernelconv2d_10/kernelconv2d_11/kernelconv2d_12/kernelconv2d_13/kernelconv2d_14/kernelconv2d_15/kernelconv2d_transpose_9/kernelconv2d_transpose_10/kernelconv2d_transpose_11/kernelconv2d_transpose_12/kernelconv2d_transpose_13/kernelconv2d_transpose_14/kernelconv2d_transpose_15/kernelconv2d_transpose_16/kernelconv2d_transpose_17/kernelconv2d_transpose_17/biasbeta_1beta_2decaylearning_rate	Adam/itertotalcountAdam/conv2d_8/kernel/mAdam/conv2d_9/kernel/mAdam/conv2d_10/kernel/mAdam/conv2d_11/kernel/mAdam/conv2d_12/kernel/mAdam/conv2d_13/kernel/mAdam/conv2d_14/kernel/mAdam/conv2d_15/kernel/m Adam/conv2d_transpose_9/kernel/m!Adam/conv2d_transpose_10/kernel/m!Adam/conv2d_transpose_11/kernel/m!Adam/conv2d_transpose_12/kernel/m!Adam/conv2d_transpose_13/kernel/m!Adam/conv2d_transpose_14/kernel/m!Adam/conv2d_transpose_15/kernel/m!Adam/conv2d_transpose_16/kernel/m!Adam/conv2d_transpose_17/kernel/mAdam/conv2d_transpose_17/bias/mAdam/conv2d_8/kernel/vAdam/conv2d_9/kernel/vAdam/conv2d_10/kernel/vAdam/conv2d_11/kernel/vAdam/conv2d_12/kernel/vAdam/conv2d_13/kernel/vAdam/conv2d_14/kernel/vAdam/conv2d_15/kernel/v Adam/conv2d_transpose_9/kernel/v!Adam/conv2d_transpose_10/kernel/v!Adam/conv2d_transpose_11/kernel/v!Adam/conv2d_transpose_12/kernel/v!Adam/conv2d_transpose_13/kernel/v!Adam/conv2d_transpose_14/kernel/v!Adam/conv2d_transpose_15/kernel/v!Adam/conv2d_transpose_16/kernel/v!Adam/conv2d_transpose_17/kernel/vAdam/conv2d_transpose_17/bias/v*I
TinB
@2>*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1050943é
ñ 
Ô
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_1048528

inputsB
(conv2d_transpose_readvariableop_resource:
identity¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose©
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
õ
)__inference_model_1_layer_call_fn_1049834

inputs!
unknown:@#
	unknown_0:@@#
	unknown_1:@ #
	unknown_2: #
	unknown_3:#
	unknown_4:#
	unknown_5:#
	unknown_6:#
	unknown_7:#
	unknown_8:#
	unknown_9:$

unknown_10:$

unknown_11:$

unknown_12: $

unknown_13:@ $

unknown_14:@@$

unknown_15:@

unknown_16:
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_10494692
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
Ë
f
J__inference_activation_31_layer_call_and_return_conditional_losses_1050532

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ë
f
J__inference_activation_27_layer_call_and_return_conditional_losses_1049050

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
K
/__inference_activation_26_layer_call_fn_1050453

inputs
identityå
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_10490402
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¶
E__inference_conv2d_8_layer_call_and_return_conditional_losses_1048867

inputs8
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

f
J__inference_activation_23_layer_call_and_return_conditional_losses_1050416

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_activation_17_layer_call_and_return_conditional_losses_1048894

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
Ë
f
J__inference_activation_31_layer_call_and_return_conditional_losses_1049106

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ò 
Õ
P__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_1048762

inputsB
(conv2d_transpose_readvariableop_resource:@ 
identity¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_transpose©
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

f
J__inference_activation_19_layer_call_and_return_conditional_losses_1048930

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
¢

+__inference_conv2d_15_layer_call_fn_1050399

inputs!
unknown:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_10489932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
Ë
f
J__inference_activation_26_layer_call_and_return_conditional_losses_1049040

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

·
F__inference_conv2d_12_layer_call_and_return_conditional_losses_1050334

inputs8
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
´$

P__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_1048843

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdd¹
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¢

+__inference_conv2d_12_layer_call_fn_1050327

inputs!
unknown:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_10489392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
Ë
f
J__inference_activation_28_layer_call_and_return_conditional_losses_1049068

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò 
Õ
P__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1048723

inputsB
(conv2d_transpose_readvariableop_resource: 
identity¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv2d_transpose©
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô¯
û
D__inference_model_1_layer_call_and_return_conditional_losses_1050029

inputsA
'conv2d_8_conv2d_readvariableop_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@@B
(conv2d_10_conv2d_readvariableop_resource:@ B
(conv2d_11_conv2d_readvariableop_resource: B
(conv2d_12_conv2d_readvariableop_resource:B
(conv2d_13_conv2d_readvariableop_resource:B
(conv2d_14_conv2d_readvariableop_resource:B
(conv2d_15_conv2d_readvariableop_resource:U
;conv2d_transpose_9_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource: V
<conv2d_transpose_15_conv2d_transpose_readvariableop_resource:@ V
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:@@V
<conv2d_transpose_17_conv2d_transpose_readvariableop_resource:@A
3conv2d_transpose_17_biasadd_readvariableop_resource:
identity¢conv2d_10/Conv2D/ReadVariableOp¢conv2d_11/Conv2D/ReadVariableOp¢conv2d_12/Conv2D/ReadVariableOp¢conv2d_13/Conv2D/ReadVariableOp¢conv2d_14/Conv2D/ReadVariableOp¢conv2d_15/Conv2D/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢3conv2d_transpose_10/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_11/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_12/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_13/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_14/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_15/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_16/conv2d_transpose/ReadVariableOp¢*conv2d_transpose_17/BiasAdd/ReadVariableOp¢3conv2d_transpose_17/conv2d_transpose/ReadVariableOp¢2conv2d_transpose_9/conv2d_transpose/ReadVariableOp°
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_8/Conv2D/ReadVariableOp¾
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
conv2d_8/Conv2D
activation_16/ReluReluconv2d_8/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
activation_16/Relu°
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_9/Conv2D/ReadVariableOpØ
conv2d_9/Conv2DConv2D activation_16/Relu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
conv2d_9/Conv2D
activation_17/ReluReluconv2d_9/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
activation_17/Relu³
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_10/Conv2D/ReadVariableOpÛ
conv2d_10/Conv2DConv2D activation_17/Relu:activations:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
paddingSAME*
strides
2
conv2d_10/Conv2D
activation_18/ReluReluconv2d_10/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
activation_18/Relu³
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_11/Conv2D/ReadVariableOpÛ
conv2d_11/Conv2DConv2D activation_18/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
conv2d_11/Conv2D
activation_19/ReluReluconv2d_11/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_19/Relu³
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_12/Conv2D/ReadVariableOpÛ
conv2d_12/Conv2DConv2D activation_19/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
conv2d_12/Conv2D
activation_20/ReluReluconv2d_12/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_20/Relu³
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_13/Conv2D/ReadVariableOpÛ
conv2d_13/Conv2DConv2D activation_20/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
conv2d_13/Conv2D
activation_21/ReluReluconv2d_13/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_21/Relu³
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_14/Conv2D/ReadVariableOpÛ
conv2d_14/Conv2DConv2D activation_21/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
conv2d_14/Conv2D
activation_22/ReluReluconv2d_14/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_22/Relu³
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_15/Conv2D/ReadVariableOpÛ
conv2d_15/Conv2DConv2D activation_22/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_15/Conv2D
activation_23/ReluReluconv2d_15/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_23/Relu
conv2d_transpose_9/ShapeShape activation_23/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_9/Shape
&conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_9/strided_slice/stack
(conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_9/strided_slice/stack_1
(conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_9/strided_slice/stack_2Ô
 conv2d_transpose_9/strided_sliceStridedSlice!conv2d_transpose_9/Shape:output:0/conv2d_transpose_9/strided_slice/stack:output:01conv2d_transpose_9/strided_slice/stack_1:output:01conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_9/strided_slicez
conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_9/stack/1z
conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_9/stack/2z
conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_9/stack/3
conv2d_transpose_9/stackPack)conv2d_transpose_9/strided_slice:output:0#conv2d_transpose_9/stack/1:output:0#conv2d_transpose_9/stack/2:output:0#conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_9/stack
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_9/strided_slice_1/stack¢
*conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_9/strided_slice_1/stack_1¢
*conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_9/strided_slice_1/stack_2Þ
"conv2d_transpose_9/strided_slice_1StridedSlice!conv2d_transpose_9/stack:output:01conv2d_transpose_9/strided_slice_1/stack:output:03conv2d_transpose_9/strided_slice_1/stack_1:output:03conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_9/strided_slice_1ì
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype024
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpÄ
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInput!conv2d_transpose_9/stack:output:0:conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0 activation_23/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2%
#conv2d_transpose_9/conv2d_transpose
activation_24/ReluRelu,conv2d_transpose_9/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_24/Relu
conv2d_transpose_10/ShapeShape activation_24/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_10/Shape
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_10/strided_slice/stack 
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_1 
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_2Ú
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_10/strided_slice|
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_10/stack/1|
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_10/stack/2|
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_10/stack/3
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_10/stack 
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_10/strided_slice_1/stack¤
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_1¤
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_2ä
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_10/strided_slice_1ï
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpÈ
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0 activation_24/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_10/conv2d_transpose
activation_25/ReluRelu-conv2d_transpose_10/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_25/Relu
	add_4/addAddV2 activation_25/Relu:activations:0 activation_22/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
	add_4/adds
conv2d_transpose_11/ShapeShapeadd_4/add:z:0*
T0*
_output_shapes
:2
conv2d_transpose_11/Shape
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_11/strided_slice/stack 
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_1 
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_2Ú
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_11/strided_slice|
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_11/stack/1|
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_11/stack/2|
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/3
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_11/stack 
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_11/strided_slice_1/stack¤
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_1¤
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_2ä
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_11/strided_slice_1ï
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpµ
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0add_4/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_11/conv2d_transpose
activation_26/ReluRelu-conv2d_transpose_11/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_26/Relu
conv2d_transpose_12/ShapeShape activation_26/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_12/Shape
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stack 
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1 
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2Ú
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_12/stack/2|
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_12/stack/3
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stack 
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stack¤
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1¤
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2ä
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1ï
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpÈ
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0 activation_26/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose
activation_27/ReluRelu-conv2d_transpose_12/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_27/Relu
	add_5/addAddV2 activation_27/Relu:activations:0 activation_20/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
	add_5/adds
conv2d_transpose_13/ShapeShapeadd_5/add:z:0*
T0*
_output_shapes
:2
conv2d_transpose_13/Shape
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stack 
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1 
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2Ú
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_13/stack/3
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stack 
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stack¤
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1¤
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2ä
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1ï
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpµ
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0add_5/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose
activation_28/ReluRelu-conv2d_transpose_13/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_28/Relu
conv2d_transpose_14/ShapeShape activation_28/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_14/Shape
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stack 
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1 
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2Ú
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_14/stack/1|
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_14/stack/3
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stack 
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stack¤
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1¤
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2ä
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1ï
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpÈ
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0 activation_28/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose
activation_29/ReluRelu-conv2d_transpose_14/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
activation_29/Relu
	add_6/addAddV2 activation_29/Relu:activations:0 activation_18/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
	add_6/adds
conv2d_transpose_15/ShapeShapeadd_6/add:z:0*
T0*
_output_shapes
:2
conv2d_transpose_15/Shape
'conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_15/strided_slice/stack 
)conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_15/strided_slice/stack_1 
)conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_15/strided_slice/stack_2Ú
!conv2d_transpose_15/strided_sliceStridedSlice"conv2d_transpose_15/Shape:output:00conv2d_transpose_15/strided_slice/stack:output:02conv2d_transpose_15/strided_slice/stack_1:output:02conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_15/strided_slice|
conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_15/stack/1|
conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_15/stack/2|
conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_15/stack/3
conv2d_transpose_15/stackPack*conv2d_transpose_15/strided_slice:output:0$conv2d_transpose_15/stack/1:output:0$conv2d_transpose_15/stack/2:output:0$conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_15/stack 
)conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_15/strided_slice_1/stack¤
+conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_15/strided_slice_1/stack_1¤
+conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_15/strided_slice_1/stack_2ä
#conv2d_transpose_15/strided_slice_1StridedSlice"conv2d_transpose_15/stack:output:02conv2d_transpose_15/strided_slice_1/stack:output:04conv2d_transpose_15/strided_slice_1/stack_1:output:04conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_15/strided_slice_1ï
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype025
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpµ
$conv2d_transpose_15/conv2d_transposeConv2DBackpropInput"conv2d_transpose_15/stack:output:0;conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0add_6/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2&
$conv2d_transpose_15/conv2d_transpose
activation_30/ReluRelu-conv2d_transpose_15/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
activation_30/Relu
conv2d_transpose_16/ShapeShape activation_30/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_16/Shape
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_16/strided_slice/stack 
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_16/strided_slice/stack_1 
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_16/strided_slice/stack_2Ú
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_16/strided_slice|
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_16/stack/1|
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_16/stack/2|
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_16/stack/3
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_16/stack 
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_16/strided_slice_1/stack¤
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_16/strided_slice_1/stack_1¤
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_16/strided_slice_1/stack_2ä
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_16/strided_slice_1ï
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpÈ
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0 activation_30/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2&
$conv2d_transpose_16/conv2d_transpose
activation_31/ReluRelu-conv2d_transpose_16/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
activation_31/Relu
	add_7/addAddV2 activation_31/Relu:activations:0 activation_16/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
	add_7/adds
conv2d_transpose_17/ShapeShapeadd_7/add:z:0*
T0*
_output_shapes
:2
conv2d_transpose_17/Shape
'conv2d_transpose_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_17/strided_slice/stack 
)conv2d_transpose_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_17/strided_slice/stack_1 
)conv2d_transpose_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_17/strided_slice/stack_2Ú
!conv2d_transpose_17/strided_sliceStridedSlice"conv2d_transpose_17/Shape:output:00conv2d_transpose_17/strided_slice/stack:output:02conv2d_transpose_17/strided_slice/stack_1:output:02conv2d_transpose_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_17/strided_slice|
conv2d_transpose_17/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_17/stack/1|
conv2d_transpose_17/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_17/stack/2|
conv2d_transpose_17/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_17/stack/3
conv2d_transpose_17/stackPack*conv2d_transpose_17/strided_slice:output:0$conv2d_transpose_17/stack/1:output:0$conv2d_transpose_17/stack/2:output:0$conv2d_transpose_17/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_17/stack 
)conv2d_transpose_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_17/strided_slice_1/stack¤
+conv2d_transpose_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_17/strided_slice_1/stack_1¤
+conv2d_transpose_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_17/strided_slice_1/stack_2ä
#conv2d_transpose_17/strided_slice_1StridedSlice"conv2d_transpose_17/stack:output:02conv2d_transpose_17/strided_slice_1/stack:output:04conv2d_transpose_17/strided_slice_1/stack_1:output:04conv2d_transpose_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_17/strided_slice_1ï
3conv2d_transpose_17/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_17_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_17/conv2d_transpose/ReadVariableOpµ
$conv2d_transpose_17/conv2d_transposeConv2DBackpropInput"conv2d_transpose_17/stack:output:0;conv2d_transpose_17/conv2d_transpose/ReadVariableOp:value:0add_7/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_17/conv2d_transposeÈ
*conv2d_transpose_17/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_17/BiasAdd/ReadVariableOpâ
conv2d_transpose_17/BiasAddBiasAdd-conv2d_transpose_17/conv2d_transpose:output:02conv2d_transpose_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
conv2d_transpose_17/BiasAdd 
IdentityIdentity$conv2d_transpose_17/BiasAdd:output:0 ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp4^conv2d_transpose_15/conv2d_transpose/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp+^conv2d_transpose_17/BiasAdd/ReadVariableOp4^conv2d_transpose_17/conv2d_transpose/ReadVariableOp3^conv2d_transpose_9/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_15/conv2d_transpose/ReadVariableOp3conv2d_transpose_15/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_17/BiasAdd/ReadVariableOp*conv2d_transpose_17/BiasAdd/ReadVariableOp2j
3conv2d_transpose_17/conv2d_transpose/ReadVariableOp3conv2d_transpose_17/conv2d_transpose/ReadVariableOp2h
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2conv2d_transpose_9/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
ò 
Õ
P__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1048645

inputsB
(conv2d_transpose_readvariableop_resource:
identity¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose©
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
f
J__inference_activation_25_layer_call_and_return_conditional_losses_1050436

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_activation_22_layer_call_and_return_conditional_losses_1050392

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

·
F__inference_conv2d_14_layer_call_and_return_conditional_losses_1050382

inputs8
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
ë
K
/__inference_activation_23_layer_call_fn_1050411

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_10490022
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
f
J__inference_activation_25_layer_call_and_return_conditional_losses_1049022

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò 
Õ
P__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_1048801

inputsB
(conv2d_transpose_readvariableop_resource:@@
identity¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_transpose©
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

f
J__inference_activation_23_layer_call_and_return_conditional_losses_1049002

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
K
/__inference_activation_31_layer_call_fn_1050527

inputs
identityå
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10491062
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ë
K
/__inference_activation_16_layer_call_fn_1050243

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_10488762
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs

·
F__inference_conv2d_10_layer_call_and_return_conditional_losses_1048903

inputs8
conv2d_readvariableop_resource:@ 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
 

D__inference_model_1_layer_call_and_return_conditional_losses_1049703
input_13*
conv2d_8_1049629:@*
conv2d_9_1049633:@@+
conv2d_10_1049637:@ +
conv2d_11_1049641: +
conv2d_12_1049645:+
conv2d_13_1049649:+
conv2d_14_1049653:+
conv2d_15_1049657:4
conv2d_transpose_9_1049661:5
conv2d_transpose_10_1049665:5
conv2d_transpose_11_1049670:5
conv2d_transpose_12_1049674:5
conv2d_transpose_13_1049679:5
conv2d_transpose_14_1049683: 5
conv2d_transpose_15_1049688:@ 5
conv2d_transpose_16_1049692:@@5
conv2d_transpose_17_1049697:@)
conv2d_transpose_17_1049699:
identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢!conv2d_12/StatefulPartitionedCall¢!conv2d_13/StatefulPartitionedCall¢!conv2d_14/StatefulPartitionedCall¢!conv2d_15/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢+conv2d_transpose_10/StatefulPartitionedCall¢+conv2d_transpose_11/StatefulPartitionedCall¢+conv2d_transpose_12/StatefulPartitionedCall¢+conv2d_transpose_13/StatefulPartitionedCall¢+conv2d_transpose_14/StatefulPartitionedCall¢+conv2d_transpose_15/StatefulPartitionedCall¢+conv2d_transpose_16/StatefulPartitionedCall¢+conv2d_transpose_17/StatefulPartitionedCall¢*conv2d_transpose_9/StatefulPartitionedCall
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_13conv2d_8_1049629*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_10488672"
 conv2d_8/StatefulPartitionedCall
activation_16/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_10488762
activation_16/PartitionedCall®
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall&activation_16/PartitionedCall:output:0conv2d_9_1049633*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_9_layer_call_and_return_conditional_losses_10488852"
 conv2d_9/StatefulPartitionedCall
activation_17/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_10488942
activation_17/PartitionedCall²
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:0conv2d_10_1049637*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_10489032#
!conv2d_10/StatefulPartitionedCall
activation_18/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_10489122
activation_18/PartitionedCall²
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0conv2d_11_1049641*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_10489212#
!conv2d_11/StatefulPartitionedCall
activation_19/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_10489302
activation_19/PartitionedCall²
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0conv2d_12_1049645*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_10489392#
!conv2d_12/StatefulPartitionedCall
activation_20/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_10489482
activation_20/PartitionedCall²
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_13_1049649*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_10489572#
!conv2d_13/StatefulPartitionedCall
activation_21/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_10489662
activation_21/PartitionedCall²
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0conv2d_14_1049653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_10489752#
!conv2d_14/StatefulPartitionedCall
activation_22/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_10489842
activation_22/PartitionedCall²
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0conv2d_15_1049657*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_10489932#
!conv2d_15/StatefulPartitionedCall
activation_23/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_10490022
activation_23/PartitionedCallè
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0conv2d_transpose_9_1049661*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_10485282,
*conv2d_transpose_9/StatefulPartitionedCall®
activation_24/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_10490122
activation_24/PartitionedCallì
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0conv2d_transpose_10_1049665*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_10485672-
+conv2d_transpose_10/StatefulPartitionedCall¯
activation_25/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_10490222
activation_25/PartitionedCall 
add_4/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_4_layer_call_and_return_conditional_losses_10490302
add_4/PartitionedCallä
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCalladd_4/PartitionedCall:output:0conv2d_transpose_11_1049670*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_10486062-
+conv2d_transpose_11/StatefulPartitionedCall¯
activation_26/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_10490402
activation_26/PartitionedCallì
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0conv2d_transpose_12_1049674*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_10486452-
+conv2d_transpose_12/StatefulPartitionedCall¯
activation_27/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_27_layer_call_and_return_conditional_losses_10490502
activation_27/PartitionedCall 
add_5/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_5_layer_call_and_return_conditional_losses_10490582
add_5/PartitionedCallä
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0conv2d_transpose_13_1049679*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_10486842-
+conv2d_transpose_13/StatefulPartitionedCall¯
activation_28/PartitionedCallPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_28_layer_call_and_return_conditional_losses_10490682
activation_28/PartitionedCallì
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0conv2d_transpose_14_1049683*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_10487232-
+conv2d_transpose_14/StatefulPartitionedCall¯
activation_29/PartitionedCallPartitionedCall4conv2d_transpose_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_29_layer_call_and_return_conditional_losses_10490782
activation_29/PartitionedCall 
add_6/PartitionedCallPartitionedCall&activation_29/PartitionedCall:output:0&activation_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_6_layer_call_and_return_conditional_losses_10490862
add_6/PartitionedCallä
+conv2d_transpose_15/StatefulPartitionedCallStatefulPartitionedCalladd_6/PartitionedCall:output:0conv2d_transpose_15_1049688*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_10487622-
+conv2d_transpose_15/StatefulPartitionedCall¯
activation_30/PartitionedCallPartitionedCall4conv2d_transpose_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10490962
activation_30/PartitionedCallì
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall&activation_30/PartitionedCall:output:0conv2d_transpose_16_1049692*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_10488012-
+conv2d_transpose_16/StatefulPartitionedCall¯
activation_31/PartitionedCallPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10491062
activation_31/PartitionedCall 
add_7/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_7_layer_call_and_return_conditional_losses_10491142
add_7/PartitionedCall
+conv2d_transpose_17/StatefulPartitionedCallStatefulPartitionedCalladd_7/PartitionedCall:output:0conv2d_transpose_17_1049697conv2d_transpose_17_1049699*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_10488432-
+conv2d_transpose_17/StatefulPartitionedCallÝ
IdentityIdentity4conv2d_transpose_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall,^conv2d_transpose_15/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall,^conv2d_transpose_17/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2Z
+conv2d_transpose_15/StatefulPartitionedCall+conv2d_transpose_15/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2Z
+conv2d_transpose_17/StatefulPartitionedCall+conv2d_transpose_17/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
input_13
ò 
Õ
P__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1048684

inputsB
(conv2d_transpose_readvariableop_resource:
identity¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose©
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü

4__inference_conv2d_transpose_9_layer_call_fn_1048536

inputs!
unknown:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_10485282
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_activation_21_layer_call_and_return_conditional_losses_1050368

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
¦
n
B__inference_add_7_layer_call_and_return_conditional_losses_1050544
inputs_0
inputs_1
identitya
addAddV2inputs_0inputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ((@:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
"
_user_specified_name
inputs/1

·
F__inference_conv2d_12_layer_call_and_return_conditional_losses_1048939

inputs8
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

f
J__inference_activation_18_layer_call_and_return_conditional_losses_1048912

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(( :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
 
_user_specified_nameinputs
þ

5__inference_conv2d_transpose_10_layer_call_fn_1048575

inputs!
unknown:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_10485672
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

·
F__inference_conv2d_11_layer_call_and_return_conditional_losses_1050310

inputs8
conv2d_readvariableop_resource: 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(( : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
 
_user_specified_nameinputs
¾
÷
)__inference_model_1_layer_call_fn_1049161
input_13!
unknown:@#
	unknown_0:@@#
	unknown_1:@ #
	unknown_2: #
	unknown_3:#
	unknown_4:#
	unknown_5:#
	unknown_6:#
	unknown_7:#
	unknown_8:#
	unknown_9:$

unknown_10:$

unknown_11:$

unknown_12: $

unknown_13:@ $

unknown_14:@@$

unknown_15:@

unknown_16:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_10491222
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
input_13
ë
K
/__inference_activation_22_layer_call_fn_1050387

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_10489842
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
 

D__inference_model_1_layer_call_and_return_conditional_losses_1049122

inputs*
conv2d_8_1048868:@*
conv2d_9_1048886:@@+
conv2d_10_1048904:@ +
conv2d_11_1048922: +
conv2d_12_1048940:+
conv2d_13_1048958:+
conv2d_14_1048976:+
conv2d_15_1048994:4
conv2d_transpose_9_1049004:5
conv2d_transpose_10_1049014:5
conv2d_transpose_11_1049032:5
conv2d_transpose_12_1049042:5
conv2d_transpose_13_1049060:5
conv2d_transpose_14_1049070: 5
conv2d_transpose_15_1049088:@ 5
conv2d_transpose_16_1049098:@@5
conv2d_transpose_17_1049116:@)
conv2d_transpose_17_1049118:
identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢!conv2d_12/StatefulPartitionedCall¢!conv2d_13/StatefulPartitionedCall¢!conv2d_14/StatefulPartitionedCall¢!conv2d_15/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢+conv2d_transpose_10/StatefulPartitionedCall¢+conv2d_transpose_11/StatefulPartitionedCall¢+conv2d_transpose_12/StatefulPartitionedCall¢+conv2d_transpose_13/StatefulPartitionedCall¢+conv2d_transpose_14/StatefulPartitionedCall¢+conv2d_transpose_15/StatefulPartitionedCall¢+conv2d_transpose_16/StatefulPartitionedCall¢+conv2d_transpose_17/StatefulPartitionedCall¢*conv2d_transpose_9/StatefulPartitionedCall
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_1048868*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_10488672"
 conv2d_8/StatefulPartitionedCall
activation_16/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_10488762
activation_16/PartitionedCall®
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall&activation_16/PartitionedCall:output:0conv2d_9_1048886*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_9_layer_call_and_return_conditional_losses_10488852"
 conv2d_9/StatefulPartitionedCall
activation_17/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_10488942
activation_17/PartitionedCall²
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:0conv2d_10_1048904*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_10489032#
!conv2d_10/StatefulPartitionedCall
activation_18/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_10489122
activation_18/PartitionedCall²
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0conv2d_11_1048922*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_10489212#
!conv2d_11/StatefulPartitionedCall
activation_19/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_10489302
activation_19/PartitionedCall²
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0conv2d_12_1048940*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_10489392#
!conv2d_12/StatefulPartitionedCall
activation_20/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_10489482
activation_20/PartitionedCall²
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_13_1048958*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_10489572#
!conv2d_13/StatefulPartitionedCall
activation_21/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_10489662
activation_21/PartitionedCall²
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0conv2d_14_1048976*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_10489752#
!conv2d_14/StatefulPartitionedCall
activation_22/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_10489842
activation_22/PartitionedCall²
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0conv2d_15_1048994*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_10489932#
!conv2d_15/StatefulPartitionedCall
activation_23/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_10490022
activation_23/PartitionedCallè
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0conv2d_transpose_9_1049004*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_10485282,
*conv2d_transpose_9/StatefulPartitionedCall®
activation_24/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_10490122
activation_24/PartitionedCallì
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0conv2d_transpose_10_1049014*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_10485672-
+conv2d_transpose_10/StatefulPartitionedCall¯
activation_25/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_10490222
activation_25/PartitionedCall 
add_4/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_4_layer_call_and_return_conditional_losses_10490302
add_4/PartitionedCallä
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCalladd_4/PartitionedCall:output:0conv2d_transpose_11_1049032*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_10486062-
+conv2d_transpose_11/StatefulPartitionedCall¯
activation_26/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_10490402
activation_26/PartitionedCallì
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0conv2d_transpose_12_1049042*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_10486452-
+conv2d_transpose_12/StatefulPartitionedCall¯
activation_27/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_27_layer_call_and_return_conditional_losses_10490502
activation_27/PartitionedCall 
add_5/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_5_layer_call_and_return_conditional_losses_10490582
add_5/PartitionedCallä
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0conv2d_transpose_13_1049060*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_10486842-
+conv2d_transpose_13/StatefulPartitionedCall¯
activation_28/PartitionedCallPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_28_layer_call_and_return_conditional_losses_10490682
activation_28/PartitionedCallì
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0conv2d_transpose_14_1049070*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_10487232-
+conv2d_transpose_14/StatefulPartitionedCall¯
activation_29/PartitionedCallPartitionedCall4conv2d_transpose_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_29_layer_call_and_return_conditional_losses_10490782
activation_29/PartitionedCall 
add_6/PartitionedCallPartitionedCall&activation_29/PartitionedCall:output:0&activation_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_6_layer_call_and_return_conditional_losses_10490862
add_6/PartitionedCallä
+conv2d_transpose_15/StatefulPartitionedCallStatefulPartitionedCalladd_6/PartitionedCall:output:0conv2d_transpose_15_1049088*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_10487622-
+conv2d_transpose_15/StatefulPartitionedCall¯
activation_30/PartitionedCallPartitionedCall4conv2d_transpose_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10490962
activation_30/PartitionedCallì
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall&activation_30/PartitionedCall:output:0conv2d_transpose_16_1049098*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_10488012-
+conv2d_transpose_16/StatefulPartitionedCall¯
activation_31/PartitionedCallPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10491062
activation_31/PartitionedCall 
add_7/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_7_layer_call_and_return_conditional_losses_10491142
add_7/PartitionedCall
+conv2d_transpose_17/StatefulPartitionedCallStatefulPartitionedCalladd_7/PartitionedCall:output:0conv2d_transpose_17_1049116conv2d_transpose_17_1049118*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_10488432-
+conv2d_transpose_17/StatefulPartitionedCallÝ
IdentityIdentity4conv2d_transpose_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall,^conv2d_transpose_15/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall,^conv2d_transpose_17/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2Z
+conv2d_transpose_15/StatefulPartitionedCall+conv2d_transpose_15/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2Z
+conv2d_transpose_17/StatefulPartitionedCall+conv2d_transpose_17/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

f
J__inference_activation_20_layer_call_and_return_conditional_losses_1048948

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

l
B__inference_add_6_layer_call_and_return_conditional_losses_1049086

inputs
inputs_1
identity_
addAddV2inputsinputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ(( :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
 
_user_specified_nameinputs
þ

5__inference_conv2d_transpose_14_layer_call_fn_1048731

inputs!
unknown: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_10487232
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
õ
)__inference_model_1_layer_call_fn_1049793

inputs!
unknown:@#
	unknown_0:@@#
	unknown_1:@ #
	unknown_2: #
	unknown_3:#
	unknown_4:#
	unknown_5:#
	unknown_6:#
	unknown_7:#
	unknown_8:#
	unknown_9:$

unknown_10:$

unknown_11:$

unknown_12: $

unknown_13:@ $

unknown_14:@@$

unknown_15:@

unknown_16:
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_10491222
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
þ

5__inference_conv2d_transpose_13_layer_call_fn_1048692

inputs!
unknown:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_10486842
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
f
J__inference_activation_27_layer_call_and_return_conditional_losses_1050468

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

+__inference_conv2d_11_layer_call_fn_1050303

inputs!
unknown: 
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_10489212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(( : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
 
_user_specified_nameinputs
Ë
f
J__inference_activation_24_layer_call_and_return_conditional_losses_1050426

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
n
B__inference_add_4_layer_call_and_return_conditional_losses_1050448
inputs_0
inputs_1
identitya
addAddV2inputs_0inputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ((:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
inputs/1
ë
K
/__inference_activation_17_layer_call_fn_1050267

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_10488942
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
´
K
/__inference_activation_24_layer_call_fn_1050421

inputs
identityå
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_10490122
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_activation_16_layer_call_and_return_conditional_losses_1050248

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
ô
ö+
#__inference__traced_restore_1050943
file_prefix:
 assignvariableop_conv2d_8_kernel:@<
"assignvariableop_1_conv2d_9_kernel:@@=
#assignvariableop_2_conv2d_10_kernel:@ =
#assignvariableop_3_conv2d_11_kernel: =
#assignvariableop_4_conv2d_12_kernel:=
#assignvariableop_5_conv2d_13_kernel:=
#assignvariableop_6_conv2d_14_kernel:=
#assignvariableop_7_conv2d_15_kernel:F
,assignvariableop_8_conv2d_transpose_9_kernel:G
-assignvariableop_9_conv2d_transpose_10_kernel:H
.assignvariableop_10_conv2d_transpose_11_kernel:H
.assignvariableop_11_conv2d_transpose_12_kernel:H
.assignvariableop_12_conv2d_transpose_13_kernel:H
.assignvariableop_13_conv2d_transpose_14_kernel: H
.assignvariableop_14_conv2d_transpose_15_kernel:@ H
.assignvariableop_15_conv2d_transpose_16_kernel:@@H
.assignvariableop_16_conv2d_transpose_17_kernel:@:
,assignvariableop_17_conv2d_transpose_17_bias:$
assignvariableop_18_beta_1: $
assignvariableop_19_beta_2: #
assignvariableop_20_decay: +
!assignvariableop_21_learning_rate: '
assignvariableop_22_adam_iter:	 #
assignvariableop_23_total: #
assignvariableop_24_count: D
*assignvariableop_25_adam_conv2d_8_kernel_m:@D
*assignvariableop_26_adam_conv2d_9_kernel_m:@@E
+assignvariableop_27_adam_conv2d_10_kernel_m:@ E
+assignvariableop_28_adam_conv2d_11_kernel_m: E
+assignvariableop_29_adam_conv2d_12_kernel_m:E
+assignvariableop_30_adam_conv2d_13_kernel_m:E
+assignvariableop_31_adam_conv2d_14_kernel_m:E
+assignvariableop_32_adam_conv2d_15_kernel_m:N
4assignvariableop_33_adam_conv2d_transpose_9_kernel_m:O
5assignvariableop_34_adam_conv2d_transpose_10_kernel_m:O
5assignvariableop_35_adam_conv2d_transpose_11_kernel_m:O
5assignvariableop_36_adam_conv2d_transpose_12_kernel_m:O
5assignvariableop_37_adam_conv2d_transpose_13_kernel_m:O
5assignvariableop_38_adam_conv2d_transpose_14_kernel_m: O
5assignvariableop_39_adam_conv2d_transpose_15_kernel_m:@ O
5assignvariableop_40_adam_conv2d_transpose_16_kernel_m:@@O
5assignvariableop_41_adam_conv2d_transpose_17_kernel_m:@A
3assignvariableop_42_adam_conv2d_transpose_17_bias_m:D
*assignvariableop_43_adam_conv2d_8_kernel_v:@D
*assignvariableop_44_adam_conv2d_9_kernel_v:@@E
+assignvariableop_45_adam_conv2d_10_kernel_v:@ E
+assignvariableop_46_adam_conv2d_11_kernel_v: E
+assignvariableop_47_adam_conv2d_12_kernel_v:E
+assignvariableop_48_adam_conv2d_13_kernel_v:E
+assignvariableop_49_adam_conv2d_14_kernel_v:E
+assignvariableop_50_adam_conv2d_15_kernel_v:N
4assignvariableop_51_adam_conv2d_transpose_9_kernel_v:O
5assignvariableop_52_adam_conv2d_transpose_10_kernel_v:O
5assignvariableop_53_adam_conv2d_transpose_11_kernel_v:O
5assignvariableop_54_adam_conv2d_transpose_12_kernel_v:O
5assignvariableop_55_adam_conv2d_transpose_13_kernel_v:O
5assignvariableop_56_adam_conv2d_transpose_14_kernel_v: O
5assignvariableop_57_adam_conv2d_transpose_15_kernel_v:@ O
5assignvariableop_58_adam_conv2d_transpose_16_kernel_v:@@O
5assignvariableop_59_adam_conv2d_transpose_17_kernel_v:@A
3assignvariableop_60_adam_conv2d_transpose_17_bias_v:
identity_62¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ê#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*Ö"
valueÌ"BÉ">B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*
valueB>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesä
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesû
ø::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_9_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_10_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¨
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv2d_11_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¨
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_13_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¨
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_14_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¨
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_15_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8±
AssignVariableOp_8AssignVariableOp,assignvariableop_8_conv2d_transpose_9_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9²
AssignVariableOp_9AssignVariableOp-assignvariableop_9_conv2d_transpose_10_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¶
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_11_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¶
AssignVariableOp_11AssignVariableOp.assignvariableop_11_conv2d_transpose_12_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¶
AssignVariableOp_12AssignVariableOp.assignvariableop_12_conv2d_transpose_13_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¶
AssignVariableOp_13AssignVariableOp.assignvariableop_13_conv2d_transpose_14_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¶
AssignVariableOp_14AssignVariableOp.assignvariableop_14_conv2d_transpose_15_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¶
AssignVariableOp_15AssignVariableOp.assignvariableop_15_conv2d_transpose_16_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¶
AssignVariableOp_16AssignVariableOp.assignvariableop_16_conv2d_transpose_17_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17´
AssignVariableOp_17AssignVariableOp,assignvariableop_17_conv2d_transpose_17_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¢
AssignVariableOp_18AssignVariableOpassignvariableop_18_beta_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¢
AssignVariableOp_19AssignVariableOpassignvariableop_19_beta_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¡
AssignVariableOp_20AssignVariableOpassignvariableop_20_decayIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21©
AssignVariableOp_21AssignVariableOp!assignvariableop_21_learning_rateIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_22¥
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¡
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¡
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_8_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26²
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_9_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27³
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_10_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28³
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_11_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29³
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_12_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30³
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_13_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31³
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_14_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32³
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_15_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¼
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_conv2d_transpose_9_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34½
AssignVariableOp_34AssignVariableOp5assignvariableop_34_adam_conv2d_transpose_10_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35½
AssignVariableOp_35AssignVariableOp5assignvariableop_35_adam_conv2d_transpose_11_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36½
AssignVariableOp_36AssignVariableOp5assignvariableop_36_adam_conv2d_transpose_12_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37½
AssignVariableOp_37AssignVariableOp5assignvariableop_37_adam_conv2d_transpose_13_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38½
AssignVariableOp_38AssignVariableOp5assignvariableop_38_adam_conv2d_transpose_14_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39½
AssignVariableOp_39AssignVariableOp5assignvariableop_39_adam_conv2d_transpose_15_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40½
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_conv2d_transpose_16_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41½
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_conv2d_transpose_17_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42»
AssignVariableOp_42AssignVariableOp3assignvariableop_42_adam_conv2d_transpose_17_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43²
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_conv2d_8_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44²
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_9_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45³
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_10_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46³
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_11_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47³
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_12_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48³
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_conv2d_13_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49³
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_14_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50³
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_conv2d_15_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51¼
AssignVariableOp_51AssignVariableOp4assignvariableop_51_adam_conv2d_transpose_9_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52½
AssignVariableOp_52AssignVariableOp5assignvariableop_52_adam_conv2d_transpose_10_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53½
AssignVariableOp_53AssignVariableOp5assignvariableop_53_adam_conv2d_transpose_11_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54½
AssignVariableOp_54AssignVariableOp5assignvariableop_54_adam_conv2d_transpose_12_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55½
AssignVariableOp_55AssignVariableOp5assignvariableop_55_adam_conv2d_transpose_13_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56½
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_conv2d_transpose_14_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57½
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_conv2d_transpose_15_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58½
AssignVariableOp_58AssignVariableOp5assignvariableop_58_adam_conv2d_transpose_16_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59½
AssignVariableOp_59AssignVariableOp5assignvariableop_59_adam_conv2d_transpose_17_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60»
AssignVariableOp_60AssignVariableOp3assignvariableop_60_adam_conv2d_transpose_17_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_609
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_61
Identity_62IdentityIdentity_61:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_62"#
identity_62Identity_62:output:0*
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ë
K
/__inference_activation_19_layer_call_fn_1050315

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_10489302
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
ë
K
/__inference_activation_20_layer_call_fn_1050339

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_10489482
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
þ

5__inference_conv2d_transpose_11_layer_call_fn_1048614

inputs!
unknown:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_10486062
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_activation_16_layer_call_and_return_conditional_losses_1048876

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
¾
÷
)__inference_model_1_layer_call_fn_1049549
input_13!
unknown:@#
	unknown_0:@@#
	unknown_1:@ #
	unknown_2: #
	unknown_3:#
	unknown_4:#
	unknown_5:#
	unknown_6:#
	unknown_7:#
	unknown_8:#
	unknown_9:$

unknown_10:$

unknown_11:$

unknown_12: $

unknown_13:@ $

unknown_14:@@$

unknown_15:@

unknown_16:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_10494692
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
input_13

¶
E__inference_conv2d_9_layer_call_and_return_conditional_losses_1050262

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs

f
J__inference_activation_21_layer_call_and_return_conditional_losses_1048966

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

f
J__inference_activation_22_layer_call_and_return_conditional_losses_1048984

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

S
'__inference_add_7_layer_call_fn_1050538
inputs_0
inputs_1
identityØ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_7_layer_call_and_return_conditional_losses_10491142
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ((@:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
"
_user_specified_name
inputs/1
 

*__inference_conv2d_8_layer_call_fn_1050231

inputs!
unknown:@
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_10488672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

S
'__inference_add_6_layer_call_fn_1050506
inputs_0
inputs_1
identityØ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_6_layer_call_and_return_conditional_losses_10490862
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ(( :k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
"
_user_specified_name
inputs/1
¦
ª
5__inference_conv2d_transpose_17_layer_call_fn_1048853

inputs!
unknown:@
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_10488432
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ë
f
J__inference_activation_29_layer_call_and_return_conditional_losses_1049078

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ò 
Õ
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1048567

inputsB
(conv2d_transpose_readvariableop_resource:
identity¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose©
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
ó
%__inference_signature_wrapper_1049752
input_13!
unknown:@#
	unknown_0:@@#
	unknown_1:@ #
	unknown_2: #
	unknown_3:#
	unknown_4:#
	unknown_5:#
	unknown_6:#
	unknown_7:#
	unknown_8:#
	unknown_9:$

unknown_10:$

unknown_11:$

unknown_12: $

unknown_13:@ $

unknown_14:@@$

unknown_15:@

unknown_16:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_10484972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
input_13
 

D__inference_model_1_layer_call_and_return_conditional_losses_1049469

inputs*
conv2d_8_1049395:@*
conv2d_9_1049399:@@+
conv2d_10_1049403:@ +
conv2d_11_1049407: +
conv2d_12_1049411:+
conv2d_13_1049415:+
conv2d_14_1049419:+
conv2d_15_1049423:4
conv2d_transpose_9_1049427:5
conv2d_transpose_10_1049431:5
conv2d_transpose_11_1049436:5
conv2d_transpose_12_1049440:5
conv2d_transpose_13_1049445:5
conv2d_transpose_14_1049449: 5
conv2d_transpose_15_1049454:@ 5
conv2d_transpose_16_1049458:@@5
conv2d_transpose_17_1049463:@)
conv2d_transpose_17_1049465:
identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢!conv2d_12/StatefulPartitionedCall¢!conv2d_13/StatefulPartitionedCall¢!conv2d_14/StatefulPartitionedCall¢!conv2d_15/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢+conv2d_transpose_10/StatefulPartitionedCall¢+conv2d_transpose_11/StatefulPartitionedCall¢+conv2d_transpose_12/StatefulPartitionedCall¢+conv2d_transpose_13/StatefulPartitionedCall¢+conv2d_transpose_14/StatefulPartitionedCall¢+conv2d_transpose_15/StatefulPartitionedCall¢+conv2d_transpose_16/StatefulPartitionedCall¢+conv2d_transpose_17/StatefulPartitionedCall¢*conv2d_transpose_9/StatefulPartitionedCall
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_1049395*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_10488672"
 conv2d_8/StatefulPartitionedCall
activation_16/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_10488762
activation_16/PartitionedCall®
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall&activation_16/PartitionedCall:output:0conv2d_9_1049399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_9_layer_call_and_return_conditional_losses_10488852"
 conv2d_9/StatefulPartitionedCall
activation_17/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_10488942
activation_17/PartitionedCall²
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:0conv2d_10_1049403*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_10489032#
!conv2d_10/StatefulPartitionedCall
activation_18/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_10489122
activation_18/PartitionedCall²
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0conv2d_11_1049407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_10489212#
!conv2d_11/StatefulPartitionedCall
activation_19/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_10489302
activation_19/PartitionedCall²
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0conv2d_12_1049411*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_10489392#
!conv2d_12/StatefulPartitionedCall
activation_20/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_10489482
activation_20/PartitionedCall²
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_13_1049415*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_10489572#
!conv2d_13/StatefulPartitionedCall
activation_21/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_10489662
activation_21/PartitionedCall²
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0conv2d_14_1049419*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_10489752#
!conv2d_14/StatefulPartitionedCall
activation_22/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_10489842
activation_22/PartitionedCall²
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0conv2d_15_1049423*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_10489932#
!conv2d_15/StatefulPartitionedCall
activation_23/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_10490022
activation_23/PartitionedCallè
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0conv2d_transpose_9_1049427*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_10485282,
*conv2d_transpose_9/StatefulPartitionedCall®
activation_24/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_10490122
activation_24/PartitionedCallì
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0conv2d_transpose_10_1049431*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_10485672-
+conv2d_transpose_10/StatefulPartitionedCall¯
activation_25/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_10490222
activation_25/PartitionedCall 
add_4/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_4_layer_call_and_return_conditional_losses_10490302
add_4/PartitionedCallä
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCalladd_4/PartitionedCall:output:0conv2d_transpose_11_1049436*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_10486062-
+conv2d_transpose_11/StatefulPartitionedCall¯
activation_26/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_10490402
activation_26/PartitionedCallì
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0conv2d_transpose_12_1049440*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_10486452-
+conv2d_transpose_12/StatefulPartitionedCall¯
activation_27/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_27_layer_call_and_return_conditional_losses_10490502
activation_27/PartitionedCall 
add_5/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_5_layer_call_and_return_conditional_losses_10490582
add_5/PartitionedCallä
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0conv2d_transpose_13_1049445*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_10486842-
+conv2d_transpose_13/StatefulPartitionedCall¯
activation_28/PartitionedCallPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_28_layer_call_and_return_conditional_losses_10490682
activation_28/PartitionedCallì
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0conv2d_transpose_14_1049449*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_10487232-
+conv2d_transpose_14/StatefulPartitionedCall¯
activation_29/PartitionedCallPartitionedCall4conv2d_transpose_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_29_layer_call_and_return_conditional_losses_10490782
activation_29/PartitionedCall 
add_6/PartitionedCallPartitionedCall&activation_29/PartitionedCall:output:0&activation_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_6_layer_call_and_return_conditional_losses_10490862
add_6/PartitionedCallä
+conv2d_transpose_15/StatefulPartitionedCallStatefulPartitionedCalladd_6/PartitionedCall:output:0conv2d_transpose_15_1049454*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_10487622-
+conv2d_transpose_15/StatefulPartitionedCall¯
activation_30/PartitionedCallPartitionedCall4conv2d_transpose_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10490962
activation_30/PartitionedCallì
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall&activation_30/PartitionedCall:output:0conv2d_transpose_16_1049458*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_10488012-
+conv2d_transpose_16/StatefulPartitionedCall¯
activation_31/PartitionedCallPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10491062
activation_31/PartitionedCall 
add_7/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_7_layer_call_and_return_conditional_losses_10491142
add_7/PartitionedCall
+conv2d_transpose_17/StatefulPartitionedCallStatefulPartitionedCalladd_7/PartitionedCall:output:0conv2d_transpose_17_1049463conv2d_transpose_17_1049465*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_10488432-
+conv2d_transpose_17/StatefulPartitionedCallÝ
IdentityIdentity4conv2d_transpose_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall,^conv2d_transpose_15/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall,^conv2d_transpose_17/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2Z
+conv2d_transpose_15/StatefulPartitionedCall+conv2d_transpose_15/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2Z
+conv2d_transpose_17/StatefulPartitionedCall+conv2d_transpose_17/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

·
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1048993

inputs8
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
¦
n
B__inference_add_5_layer_call_and_return_conditional_losses_1050480
inputs_0
inputs_1
identitya
addAddV2inputs_0inputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ((:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
inputs/1
¦
n
B__inference_add_6_layer_call_and_return_conditional_losses_1050512
inputs_0
inputs_1
identitya
addAddV2inputs_0inputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ(( :k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
"
_user_specified_name
inputs/1
¢

+__inference_conv2d_14_layer_call_fn_1050375

inputs!
unknown:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_10489752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
¢

+__inference_conv2d_10_layer_call_fn_1050279

inputs!
unknown:@ 
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_10489032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs

f
J__inference_activation_20_layer_call_and_return_conditional_losses_1050344

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

·
F__inference_conv2d_14_layer_call_and_return_conditional_losses_1048975

inputs8
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

·
F__inference_conv2d_13_layer_call_and_return_conditional_losses_1050358

inputs8
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

l
B__inference_add_4_layer_call_and_return_conditional_losses_1049030

inputs
inputs_1
identity_
addAddV2inputsinputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ((:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
 

*__inference_conv2d_9_layer_call_fn_1050255

inputs!
unknown:@@
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_9_layer_call_and_return_conditional_losses_10488852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs

·
F__inference_conv2d_11_layer_call_and_return_conditional_losses_1048921

inputs8
conv2d_readvariableop_resource: 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(( : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
 
_user_specified_nameinputs
þ

5__inference_conv2d_transpose_12_layer_call_fn_1048653

inputs!
unknown:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_10486452
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

l
B__inference_add_7_layer_call_and_return_conditional_losses_1049114

inputs
inputs_1
identity_
addAddV2inputsinputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ((@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
Ë
f
J__inference_activation_30_layer_call_and_return_conditional_losses_1049096

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
÷×
û
"__inference__wrapped_model_1048497
input_13I
/model_1_conv2d_8_conv2d_readvariableop_resource:@I
/model_1_conv2d_9_conv2d_readvariableop_resource:@@J
0model_1_conv2d_10_conv2d_readvariableop_resource:@ J
0model_1_conv2d_11_conv2d_readvariableop_resource: J
0model_1_conv2d_12_conv2d_readvariableop_resource:J
0model_1_conv2d_13_conv2d_readvariableop_resource:J
0model_1_conv2d_14_conv2d_readvariableop_resource:J
0model_1_conv2d_15_conv2d_readvariableop_resource:]
Cmodel_1_conv2d_transpose_9_conv2d_transpose_readvariableop_resource:^
Dmodel_1_conv2d_transpose_10_conv2d_transpose_readvariableop_resource:^
Dmodel_1_conv2d_transpose_11_conv2d_transpose_readvariableop_resource:^
Dmodel_1_conv2d_transpose_12_conv2d_transpose_readvariableop_resource:^
Dmodel_1_conv2d_transpose_13_conv2d_transpose_readvariableop_resource:^
Dmodel_1_conv2d_transpose_14_conv2d_transpose_readvariableop_resource: ^
Dmodel_1_conv2d_transpose_15_conv2d_transpose_readvariableop_resource:@ ^
Dmodel_1_conv2d_transpose_16_conv2d_transpose_readvariableop_resource:@@^
Dmodel_1_conv2d_transpose_17_conv2d_transpose_readvariableop_resource:@I
;model_1_conv2d_transpose_17_biasadd_readvariableop_resource:
identity¢'model_1/conv2d_10/Conv2D/ReadVariableOp¢'model_1/conv2d_11/Conv2D/ReadVariableOp¢'model_1/conv2d_12/Conv2D/ReadVariableOp¢'model_1/conv2d_13/Conv2D/ReadVariableOp¢'model_1/conv2d_14/Conv2D/ReadVariableOp¢'model_1/conv2d_15/Conv2D/ReadVariableOp¢&model_1/conv2d_8/Conv2D/ReadVariableOp¢&model_1/conv2d_9/Conv2D/ReadVariableOp¢;model_1/conv2d_transpose_10/conv2d_transpose/ReadVariableOp¢;model_1/conv2d_transpose_11/conv2d_transpose/ReadVariableOp¢;model_1/conv2d_transpose_12/conv2d_transpose/ReadVariableOp¢;model_1/conv2d_transpose_13/conv2d_transpose/ReadVariableOp¢;model_1/conv2d_transpose_14/conv2d_transpose/ReadVariableOp¢;model_1/conv2d_transpose_15/conv2d_transpose/ReadVariableOp¢;model_1/conv2d_transpose_16/conv2d_transpose/ReadVariableOp¢2model_1/conv2d_transpose_17/BiasAdd/ReadVariableOp¢;model_1/conv2d_transpose_17/conv2d_transpose/ReadVariableOp¢:model_1/conv2d_transpose_9/conv2d_transpose/ReadVariableOpÈ
&model_1/conv2d_8/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&model_1/conv2d_8/Conv2D/ReadVariableOpØ
model_1/conv2d_8/Conv2DConv2Dinput_13.model_1/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
model_1/conv2d_8/Conv2D
model_1/activation_16/ReluRelu model_1/conv2d_8/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
model_1/activation_16/ReluÈ
&model_1/conv2d_9/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&model_1/conv2d_9/Conv2D/ReadVariableOpø
model_1/conv2d_9/Conv2DConv2D(model_1/activation_16/Relu:activations:0.model_1/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
model_1/conv2d_9/Conv2D
model_1/activation_17/ReluRelu model_1/conv2d_9/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
model_1/activation_17/ReluË
'model_1/conv2d_10/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02)
'model_1/conv2d_10/Conv2D/ReadVariableOpû
model_1/conv2d_10/Conv2DConv2D(model_1/activation_17/Relu:activations:0/model_1/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
paddingSAME*
strides
2
model_1/conv2d_10/Conv2D
model_1/activation_18/ReluRelu!model_1/conv2d_10/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
model_1/activation_18/ReluË
'model_1/conv2d_11/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_1/conv2d_11/Conv2D/ReadVariableOpû
model_1/conv2d_11/Conv2DConv2D(model_1/activation_18/Relu:activations:0/model_1/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
model_1/conv2d_11/Conv2D
model_1/activation_19/ReluRelu!model_1/conv2d_11/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_19/ReluË
'model_1/conv2d_12/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'model_1/conv2d_12/Conv2D/ReadVariableOpû
model_1/conv2d_12/Conv2DConv2D(model_1/activation_19/Relu:activations:0/model_1/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
model_1/conv2d_12/Conv2D
model_1/activation_20/ReluRelu!model_1/conv2d_12/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_20/ReluË
'model_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'model_1/conv2d_13/Conv2D/ReadVariableOpû
model_1/conv2d_13/Conv2DConv2D(model_1/activation_20/Relu:activations:0/model_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
model_1/conv2d_13/Conv2D
model_1/activation_21/ReluRelu!model_1/conv2d_13/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_21/ReluË
'model_1/conv2d_14/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'model_1/conv2d_14/Conv2D/ReadVariableOpû
model_1/conv2d_14/Conv2DConv2D(model_1/activation_21/Relu:activations:0/model_1/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
model_1/conv2d_14/Conv2D
model_1/activation_22/ReluRelu!model_1/conv2d_14/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_22/ReluË
'model_1/conv2d_15/Conv2D/ReadVariableOpReadVariableOp0model_1_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'model_1/conv2d_15/Conv2D/ReadVariableOpû
model_1/conv2d_15/Conv2DConv2D(model_1/activation_22/Relu:activations:0/model_1/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model_1/conv2d_15/Conv2D
model_1/activation_23/ReluRelu!model_1/conv2d_15/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/activation_23/Relu
 model_1/conv2d_transpose_9/ShapeShape(model_1/activation_23/Relu:activations:0*
T0*
_output_shapes
:2"
 model_1/conv2d_transpose_9/Shapeª
.model_1/conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model_1/conv2d_transpose_9/strided_slice/stack®
0model_1/conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model_1/conv2d_transpose_9/strided_slice/stack_1®
0model_1/conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model_1/conv2d_transpose_9/strided_slice/stack_2
(model_1/conv2d_transpose_9/strided_sliceStridedSlice)model_1/conv2d_transpose_9/Shape:output:07model_1/conv2d_transpose_9/strided_slice/stack:output:09model_1/conv2d_transpose_9/strided_slice/stack_1:output:09model_1/conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(model_1/conv2d_transpose_9/strided_slice
"model_1/conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2$
"model_1/conv2d_transpose_9/stack/1
"model_1/conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2$
"model_1/conv2d_transpose_9/stack/2
"model_1/conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2$
"model_1/conv2d_transpose_9/stack/3´
 model_1/conv2d_transpose_9/stackPack1model_1/conv2d_transpose_9/strided_slice:output:0+model_1/conv2d_transpose_9/stack/1:output:0+model_1/conv2d_transpose_9/stack/2:output:0+model_1/conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:2"
 model_1/conv2d_transpose_9/stack®
0model_1/conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0model_1/conv2d_transpose_9/strided_slice_1/stack²
2model_1/conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2model_1/conv2d_transpose_9/strided_slice_1/stack_1²
2model_1/conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2model_1/conv2d_transpose_9/strided_slice_1/stack_2
*model_1/conv2d_transpose_9/strided_slice_1StridedSlice)model_1/conv2d_transpose_9/stack:output:09model_1/conv2d_transpose_9/strided_slice_1/stack:output:0;model_1/conv2d_transpose_9/strided_slice_1/stack_1:output:0;model_1/conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*model_1/conv2d_transpose_9/strided_slice_1
:model_1/conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02<
:model_1/conv2d_transpose_9/conv2d_transpose/ReadVariableOpì
+model_1/conv2d_transpose_9/conv2d_transposeConv2DBackpropInput)model_1/conv2d_transpose_9/stack:output:0Bmodel_1/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0(model_1/activation_23/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2-
+model_1/conv2d_transpose_9/conv2d_transpose°
model_1/activation_24/ReluRelu4model_1/conv2d_transpose_9/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_24/Relu
!model_1/conv2d_transpose_10/ShapeShape(model_1/activation_24/Relu:activations:0*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_10/Shape¬
/model_1/conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_1/conv2d_transpose_10/strided_slice/stack°
1model_1/conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_10/strided_slice/stack_1°
1model_1/conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_10/strided_slice/stack_2
)model_1/conv2d_transpose_10/strided_sliceStridedSlice*model_1/conv2d_transpose_10/Shape:output:08model_1/conv2d_transpose_10/strided_slice/stack:output:0:model_1/conv2d_transpose_10/strided_slice/stack_1:output:0:model_1/conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_1/conv2d_transpose_10/strided_slice
#model_1/conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_10/stack/1
#model_1/conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_10/stack/2
#model_1/conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_1/conv2d_transpose_10/stack/3º
!model_1/conv2d_transpose_10/stackPack2model_1/conv2d_transpose_10/strided_slice:output:0,model_1/conv2d_transpose_10/stack/1:output:0,model_1/conv2d_transpose_10/stack/2:output:0,model_1/conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_10/stack°
1model_1/conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_1/conv2d_transpose_10/strided_slice_1/stack´
3model_1/conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_10/strided_slice_1/stack_1´
3model_1/conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_10/strided_slice_1/stack_2
+model_1/conv2d_transpose_10/strided_slice_1StridedSlice*model_1/conv2d_transpose_10/stack:output:0:model_1/conv2d_transpose_10/strided_slice_1/stack:output:0<model_1/conv2d_transpose_10/strided_slice_1/stack_1:output:0<model_1/conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_1/conv2d_transpose_10/strided_slice_1
;model_1/conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_1_conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02=
;model_1/conv2d_transpose_10/conv2d_transpose/ReadVariableOpð
,model_1/conv2d_transpose_10/conv2d_transposeConv2DBackpropInput*model_1/conv2d_transpose_10/stack:output:0Cmodel_1/conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0(model_1/activation_24/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2.
,model_1/conv2d_transpose_10/conv2d_transpose±
model_1/activation_25/ReluRelu5model_1/conv2d_transpose_10/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_25/Relu½
model_1/add_4/addAddV2(model_1/activation_25/Relu:activations:0(model_1/activation_22/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/add_4/add
!model_1/conv2d_transpose_11/ShapeShapemodel_1/add_4/add:z:0*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_11/Shape¬
/model_1/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_1/conv2d_transpose_11/strided_slice/stack°
1model_1/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_11/strided_slice/stack_1°
1model_1/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_11/strided_slice/stack_2
)model_1/conv2d_transpose_11/strided_sliceStridedSlice*model_1/conv2d_transpose_11/Shape:output:08model_1/conv2d_transpose_11/strided_slice/stack:output:0:model_1/conv2d_transpose_11/strided_slice/stack_1:output:0:model_1/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_1/conv2d_transpose_11/strided_slice
#model_1/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_11/stack/1
#model_1/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_11/stack/2
#model_1/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_1/conv2d_transpose_11/stack/3º
!model_1/conv2d_transpose_11/stackPack2model_1/conv2d_transpose_11/strided_slice:output:0,model_1/conv2d_transpose_11/stack/1:output:0,model_1/conv2d_transpose_11/stack/2:output:0,model_1/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_11/stack°
1model_1/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_1/conv2d_transpose_11/strided_slice_1/stack´
3model_1/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_11/strided_slice_1/stack_1´
3model_1/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_11/strided_slice_1/stack_2
+model_1/conv2d_transpose_11/strided_slice_1StridedSlice*model_1/conv2d_transpose_11/stack:output:0:model_1/conv2d_transpose_11/strided_slice_1/stack:output:0<model_1/conv2d_transpose_11/strided_slice_1/stack_1:output:0<model_1/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_1/conv2d_transpose_11/strided_slice_1
;model_1/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_1_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02=
;model_1/conv2d_transpose_11/conv2d_transpose/ReadVariableOpÝ
,model_1/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput*model_1/conv2d_transpose_11/stack:output:0Cmodel_1/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0model_1/add_4/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2.
,model_1/conv2d_transpose_11/conv2d_transpose±
model_1/activation_26/ReluRelu5model_1/conv2d_transpose_11/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_26/Relu
!model_1/conv2d_transpose_12/ShapeShape(model_1/activation_26/Relu:activations:0*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_12/Shape¬
/model_1/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_1/conv2d_transpose_12/strided_slice/stack°
1model_1/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_12/strided_slice/stack_1°
1model_1/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_12/strided_slice/stack_2
)model_1/conv2d_transpose_12/strided_sliceStridedSlice*model_1/conv2d_transpose_12/Shape:output:08model_1/conv2d_transpose_12/strided_slice/stack:output:0:model_1/conv2d_transpose_12/strided_slice/stack_1:output:0:model_1/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_1/conv2d_transpose_12/strided_slice
#model_1/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_12/stack/1
#model_1/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_12/stack/2
#model_1/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_1/conv2d_transpose_12/stack/3º
!model_1/conv2d_transpose_12/stackPack2model_1/conv2d_transpose_12/strided_slice:output:0,model_1/conv2d_transpose_12/stack/1:output:0,model_1/conv2d_transpose_12/stack/2:output:0,model_1/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_12/stack°
1model_1/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_1/conv2d_transpose_12/strided_slice_1/stack´
3model_1/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_12/strided_slice_1/stack_1´
3model_1/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_12/strided_slice_1/stack_2
+model_1/conv2d_transpose_12/strided_slice_1StridedSlice*model_1/conv2d_transpose_12/stack:output:0:model_1/conv2d_transpose_12/strided_slice_1/stack:output:0<model_1/conv2d_transpose_12/strided_slice_1/stack_1:output:0<model_1/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_1/conv2d_transpose_12/strided_slice_1
;model_1/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_1_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02=
;model_1/conv2d_transpose_12/conv2d_transpose/ReadVariableOpð
,model_1/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput*model_1/conv2d_transpose_12/stack:output:0Cmodel_1/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0(model_1/activation_26/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2.
,model_1/conv2d_transpose_12/conv2d_transpose±
model_1/activation_27/ReluRelu5model_1/conv2d_transpose_12/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_27/Relu½
model_1/add_5/addAddV2(model_1/activation_27/Relu:activations:0(model_1/activation_20/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/add_5/add
!model_1/conv2d_transpose_13/ShapeShapemodel_1/add_5/add:z:0*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_13/Shape¬
/model_1/conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_1/conv2d_transpose_13/strided_slice/stack°
1model_1/conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_13/strided_slice/stack_1°
1model_1/conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_13/strided_slice/stack_2
)model_1/conv2d_transpose_13/strided_sliceStridedSlice*model_1/conv2d_transpose_13/Shape:output:08model_1/conv2d_transpose_13/strided_slice/stack:output:0:model_1/conv2d_transpose_13/strided_slice/stack_1:output:0:model_1/conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_1/conv2d_transpose_13/strided_slice
#model_1/conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_13/stack/1
#model_1/conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_13/stack/2
#model_1/conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_1/conv2d_transpose_13/stack/3º
!model_1/conv2d_transpose_13/stackPack2model_1/conv2d_transpose_13/strided_slice:output:0,model_1/conv2d_transpose_13/stack/1:output:0,model_1/conv2d_transpose_13/stack/2:output:0,model_1/conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_13/stack°
1model_1/conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_1/conv2d_transpose_13/strided_slice_1/stack´
3model_1/conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_13/strided_slice_1/stack_1´
3model_1/conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_13/strided_slice_1/stack_2
+model_1/conv2d_transpose_13/strided_slice_1StridedSlice*model_1/conv2d_transpose_13/stack:output:0:model_1/conv2d_transpose_13/strided_slice_1/stack:output:0<model_1/conv2d_transpose_13/strided_slice_1/stack_1:output:0<model_1/conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_1/conv2d_transpose_13/strided_slice_1
;model_1/conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_1_conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02=
;model_1/conv2d_transpose_13/conv2d_transpose/ReadVariableOpÝ
,model_1/conv2d_transpose_13/conv2d_transposeConv2DBackpropInput*model_1/conv2d_transpose_13/stack:output:0Cmodel_1/conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0model_1/add_5/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2.
,model_1/conv2d_transpose_13/conv2d_transpose±
model_1/activation_28/ReluRelu5model_1/conv2d_transpose_13/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
model_1/activation_28/Relu
!model_1/conv2d_transpose_14/ShapeShape(model_1/activation_28/Relu:activations:0*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_14/Shape¬
/model_1/conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_1/conv2d_transpose_14/strided_slice/stack°
1model_1/conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_14/strided_slice/stack_1°
1model_1/conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_14/strided_slice/stack_2
)model_1/conv2d_transpose_14/strided_sliceStridedSlice*model_1/conv2d_transpose_14/Shape:output:08model_1/conv2d_transpose_14/strided_slice/stack:output:0:model_1/conv2d_transpose_14/strided_slice/stack_1:output:0:model_1/conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_1/conv2d_transpose_14/strided_slice
#model_1/conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_14/stack/1
#model_1/conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_14/stack/2
#model_1/conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_1/conv2d_transpose_14/stack/3º
!model_1/conv2d_transpose_14/stackPack2model_1/conv2d_transpose_14/strided_slice:output:0,model_1/conv2d_transpose_14/stack/1:output:0,model_1/conv2d_transpose_14/stack/2:output:0,model_1/conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_14/stack°
1model_1/conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_1/conv2d_transpose_14/strided_slice_1/stack´
3model_1/conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_14/strided_slice_1/stack_1´
3model_1/conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_14/strided_slice_1/stack_2
+model_1/conv2d_transpose_14/strided_slice_1StridedSlice*model_1/conv2d_transpose_14/stack:output:0:model_1/conv2d_transpose_14/strided_slice_1/stack:output:0<model_1/conv2d_transpose_14/strided_slice_1/stack_1:output:0<model_1/conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_1/conv2d_transpose_14/strided_slice_1
;model_1/conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_1_conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02=
;model_1/conv2d_transpose_14/conv2d_transpose/ReadVariableOpð
,model_1/conv2d_transpose_14/conv2d_transposeConv2DBackpropInput*model_1/conv2d_transpose_14/stack:output:0Cmodel_1/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0(model_1/activation_28/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
paddingSAME*
strides
2.
,model_1/conv2d_transpose_14/conv2d_transpose±
model_1/activation_29/ReluRelu5model_1/conv2d_transpose_14/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
model_1/activation_29/Relu½
model_1/add_6/addAddV2(model_1/activation_29/Relu:activations:0(model_1/activation_18/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
model_1/add_6/add
!model_1/conv2d_transpose_15/ShapeShapemodel_1/add_6/add:z:0*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_15/Shape¬
/model_1/conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_1/conv2d_transpose_15/strided_slice/stack°
1model_1/conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_15/strided_slice/stack_1°
1model_1/conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_15/strided_slice/stack_2
)model_1/conv2d_transpose_15/strided_sliceStridedSlice*model_1/conv2d_transpose_15/Shape:output:08model_1/conv2d_transpose_15/strided_slice/stack:output:0:model_1/conv2d_transpose_15/strided_slice/stack_1:output:0:model_1/conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_1/conv2d_transpose_15/strided_slice
#model_1/conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_15/stack/1
#model_1/conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_15/stack/2
#model_1/conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_1/conv2d_transpose_15/stack/3º
!model_1/conv2d_transpose_15/stackPack2model_1/conv2d_transpose_15/strided_slice:output:0,model_1/conv2d_transpose_15/stack/1:output:0,model_1/conv2d_transpose_15/stack/2:output:0,model_1/conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_15/stack°
1model_1/conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_1/conv2d_transpose_15/strided_slice_1/stack´
3model_1/conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_15/strided_slice_1/stack_1´
3model_1/conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_15/strided_slice_1/stack_2
+model_1/conv2d_transpose_15/strided_slice_1StridedSlice*model_1/conv2d_transpose_15/stack:output:0:model_1/conv2d_transpose_15/strided_slice_1/stack:output:0<model_1/conv2d_transpose_15/strided_slice_1/stack_1:output:0<model_1/conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_1/conv2d_transpose_15/strided_slice_1
;model_1/conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_1_conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype02=
;model_1/conv2d_transpose_15/conv2d_transpose/ReadVariableOpÝ
,model_1/conv2d_transpose_15/conv2d_transposeConv2DBackpropInput*model_1/conv2d_transpose_15/stack:output:0Cmodel_1/conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0model_1/add_6/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2.
,model_1/conv2d_transpose_15/conv2d_transpose±
model_1/activation_30/ReluRelu5model_1/conv2d_transpose_15/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
model_1/activation_30/Relu
!model_1/conv2d_transpose_16/ShapeShape(model_1/activation_30/Relu:activations:0*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_16/Shape¬
/model_1/conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_1/conv2d_transpose_16/strided_slice/stack°
1model_1/conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_16/strided_slice/stack_1°
1model_1/conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_16/strided_slice/stack_2
)model_1/conv2d_transpose_16/strided_sliceStridedSlice*model_1/conv2d_transpose_16/Shape:output:08model_1/conv2d_transpose_16/strided_slice/stack:output:0:model_1/conv2d_transpose_16/strided_slice/stack_1:output:0:model_1/conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_1/conv2d_transpose_16/strided_slice
#model_1/conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_16/stack/1
#model_1/conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_16/stack/2
#model_1/conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_1/conv2d_transpose_16/stack/3º
!model_1/conv2d_transpose_16/stackPack2model_1/conv2d_transpose_16/strided_slice:output:0,model_1/conv2d_transpose_16/stack/1:output:0,model_1/conv2d_transpose_16/stack/2:output:0,model_1/conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_16/stack°
1model_1/conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_1/conv2d_transpose_16/strided_slice_1/stack´
3model_1/conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_16/strided_slice_1/stack_1´
3model_1/conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_16/strided_slice_1/stack_2
+model_1/conv2d_transpose_16/strided_slice_1StridedSlice*model_1/conv2d_transpose_16/stack:output:0:model_1/conv2d_transpose_16/strided_slice_1/stack:output:0<model_1/conv2d_transpose_16/strided_slice_1/stack_1:output:0<model_1/conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_1/conv2d_transpose_16/strided_slice_1
;model_1/conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_1_conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype02=
;model_1/conv2d_transpose_16/conv2d_transpose/ReadVariableOpð
,model_1/conv2d_transpose_16/conv2d_transposeConv2DBackpropInput*model_1/conv2d_transpose_16/stack:output:0Cmodel_1/conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0(model_1/activation_30/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2.
,model_1/conv2d_transpose_16/conv2d_transpose±
model_1/activation_31/ReluRelu5model_1/conv2d_transpose_16/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
model_1/activation_31/Relu½
model_1/add_7/addAddV2(model_1/activation_31/Relu:activations:0(model_1/activation_16/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
model_1/add_7/add
!model_1/conv2d_transpose_17/ShapeShapemodel_1/add_7/add:z:0*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_17/Shape¬
/model_1/conv2d_transpose_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_1/conv2d_transpose_17/strided_slice/stack°
1model_1/conv2d_transpose_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_17/strided_slice/stack_1°
1model_1/conv2d_transpose_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_1/conv2d_transpose_17/strided_slice/stack_2
)model_1/conv2d_transpose_17/strided_sliceStridedSlice*model_1/conv2d_transpose_17/Shape:output:08model_1/conv2d_transpose_17/strided_slice/stack:output:0:model_1/conv2d_transpose_17/strided_slice/stack_1:output:0:model_1/conv2d_transpose_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_1/conv2d_transpose_17/strided_slice
#model_1/conv2d_transpose_17/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_17/stack/1
#model_1/conv2d_transpose_17/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2%
#model_1/conv2d_transpose_17/stack/2
#model_1/conv2d_transpose_17/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_1/conv2d_transpose_17/stack/3º
!model_1/conv2d_transpose_17/stackPack2model_1/conv2d_transpose_17/strided_slice:output:0,model_1/conv2d_transpose_17/stack/1:output:0,model_1/conv2d_transpose_17/stack/2:output:0,model_1/conv2d_transpose_17/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_1/conv2d_transpose_17/stack°
1model_1/conv2d_transpose_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_1/conv2d_transpose_17/strided_slice_1/stack´
3model_1/conv2d_transpose_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_17/strided_slice_1/stack_1´
3model_1/conv2d_transpose_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_1/conv2d_transpose_17/strided_slice_1/stack_2
+model_1/conv2d_transpose_17/strided_slice_1StridedSlice*model_1/conv2d_transpose_17/stack:output:0:model_1/conv2d_transpose_17/strided_slice_1/stack:output:0<model_1/conv2d_transpose_17/strided_slice_1/stack_1:output:0<model_1/conv2d_transpose_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_1/conv2d_transpose_17/strided_slice_1
;model_1/conv2d_transpose_17/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_1_conv2d_transpose_17_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02=
;model_1/conv2d_transpose_17/conv2d_transpose/ReadVariableOpÝ
,model_1/conv2d_transpose_17/conv2d_transposeConv2DBackpropInput*model_1/conv2d_transpose_17/stack:output:0Cmodel_1/conv2d_transpose_17/conv2d_transpose/ReadVariableOp:value:0model_1/add_7/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2.
,model_1/conv2d_transpose_17/conv2d_transposeà
2model_1/conv2d_transpose_17/BiasAdd/ReadVariableOpReadVariableOp;model_1_conv2d_transpose_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2model_1/conv2d_transpose_17/BiasAdd/ReadVariableOp
#model_1/conv2d_transpose_17/BiasAddBiasAdd5model_1/conv2d_transpose_17/conv2d_transpose:output:0:model_1/conv2d_transpose_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2%
#model_1/conv2d_transpose_17/BiasAdd¸
IdentityIdentity,model_1/conv2d_transpose_17/BiasAdd:output:0(^model_1/conv2d_10/Conv2D/ReadVariableOp(^model_1/conv2d_11/Conv2D/ReadVariableOp(^model_1/conv2d_12/Conv2D/ReadVariableOp(^model_1/conv2d_13/Conv2D/ReadVariableOp(^model_1/conv2d_14/Conv2D/ReadVariableOp(^model_1/conv2d_15/Conv2D/ReadVariableOp'^model_1/conv2d_8/Conv2D/ReadVariableOp'^model_1/conv2d_9/Conv2D/ReadVariableOp<^model_1/conv2d_transpose_10/conv2d_transpose/ReadVariableOp<^model_1/conv2d_transpose_11/conv2d_transpose/ReadVariableOp<^model_1/conv2d_transpose_12/conv2d_transpose/ReadVariableOp<^model_1/conv2d_transpose_13/conv2d_transpose/ReadVariableOp<^model_1/conv2d_transpose_14/conv2d_transpose/ReadVariableOp<^model_1/conv2d_transpose_15/conv2d_transpose/ReadVariableOp<^model_1/conv2d_transpose_16/conv2d_transpose/ReadVariableOp3^model_1/conv2d_transpose_17/BiasAdd/ReadVariableOp<^model_1/conv2d_transpose_17/conv2d_transpose/ReadVariableOp;^model_1/conv2d_transpose_9/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 2R
'model_1/conv2d_10/Conv2D/ReadVariableOp'model_1/conv2d_10/Conv2D/ReadVariableOp2R
'model_1/conv2d_11/Conv2D/ReadVariableOp'model_1/conv2d_11/Conv2D/ReadVariableOp2R
'model_1/conv2d_12/Conv2D/ReadVariableOp'model_1/conv2d_12/Conv2D/ReadVariableOp2R
'model_1/conv2d_13/Conv2D/ReadVariableOp'model_1/conv2d_13/Conv2D/ReadVariableOp2R
'model_1/conv2d_14/Conv2D/ReadVariableOp'model_1/conv2d_14/Conv2D/ReadVariableOp2R
'model_1/conv2d_15/Conv2D/ReadVariableOp'model_1/conv2d_15/Conv2D/ReadVariableOp2P
&model_1/conv2d_8/Conv2D/ReadVariableOp&model_1/conv2d_8/Conv2D/ReadVariableOp2P
&model_1/conv2d_9/Conv2D/ReadVariableOp&model_1/conv2d_9/Conv2D/ReadVariableOp2z
;model_1/conv2d_transpose_10/conv2d_transpose/ReadVariableOp;model_1/conv2d_transpose_10/conv2d_transpose/ReadVariableOp2z
;model_1/conv2d_transpose_11/conv2d_transpose/ReadVariableOp;model_1/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2z
;model_1/conv2d_transpose_12/conv2d_transpose/ReadVariableOp;model_1/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2z
;model_1/conv2d_transpose_13/conv2d_transpose/ReadVariableOp;model_1/conv2d_transpose_13/conv2d_transpose/ReadVariableOp2z
;model_1/conv2d_transpose_14/conv2d_transpose/ReadVariableOp;model_1/conv2d_transpose_14/conv2d_transpose/ReadVariableOp2z
;model_1/conv2d_transpose_15/conv2d_transpose/ReadVariableOp;model_1/conv2d_transpose_15/conv2d_transpose/ReadVariableOp2z
;model_1/conv2d_transpose_16/conv2d_transpose/ReadVariableOp;model_1/conv2d_transpose_16/conv2d_transpose/ReadVariableOp2h
2model_1/conv2d_transpose_17/BiasAdd/ReadVariableOp2model_1/conv2d_transpose_17/BiasAdd/ReadVariableOp2z
;model_1/conv2d_transpose_17/conv2d_transpose/ReadVariableOp;model_1/conv2d_transpose_17/conv2d_transpose/ReadVariableOp2x
:model_1/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:model_1/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
input_13
ë
K
/__inference_activation_21_layer_call_fn_1050363

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_10489662
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs

·
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1050406

inputs8
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
´
K
/__inference_activation_28_layer_call_fn_1050485

inputs
identityå
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_28_layer_call_and_return_conditional_losses_10490682
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
K
/__inference_activation_25_layer_call_fn_1050431

inputs
identityå
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_10490222
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô¯
û
D__inference_model_1_layer_call_and_return_conditional_losses_1050224

inputsA
'conv2d_8_conv2d_readvariableop_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@@B
(conv2d_10_conv2d_readvariableop_resource:@ B
(conv2d_11_conv2d_readvariableop_resource: B
(conv2d_12_conv2d_readvariableop_resource:B
(conv2d_13_conv2d_readvariableop_resource:B
(conv2d_14_conv2d_readvariableop_resource:B
(conv2d_15_conv2d_readvariableop_resource:U
;conv2d_transpose_9_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource:V
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource: V
<conv2d_transpose_15_conv2d_transpose_readvariableop_resource:@ V
<conv2d_transpose_16_conv2d_transpose_readvariableop_resource:@@V
<conv2d_transpose_17_conv2d_transpose_readvariableop_resource:@A
3conv2d_transpose_17_biasadd_readvariableop_resource:
identity¢conv2d_10/Conv2D/ReadVariableOp¢conv2d_11/Conv2D/ReadVariableOp¢conv2d_12/Conv2D/ReadVariableOp¢conv2d_13/Conv2D/ReadVariableOp¢conv2d_14/Conv2D/ReadVariableOp¢conv2d_15/Conv2D/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢3conv2d_transpose_10/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_11/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_12/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_13/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_14/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_15/conv2d_transpose/ReadVariableOp¢3conv2d_transpose_16/conv2d_transpose/ReadVariableOp¢*conv2d_transpose_17/BiasAdd/ReadVariableOp¢3conv2d_transpose_17/conv2d_transpose/ReadVariableOp¢2conv2d_transpose_9/conv2d_transpose/ReadVariableOp°
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_8/Conv2D/ReadVariableOp¾
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
conv2d_8/Conv2D
activation_16/ReluReluconv2d_8/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
activation_16/Relu°
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_9/Conv2D/ReadVariableOpØ
conv2d_9/Conv2DConv2D activation_16/Relu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
conv2d_9/Conv2D
activation_17/ReluReluconv2d_9/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
activation_17/Relu³
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_10/Conv2D/ReadVariableOpÛ
conv2d_10/Conv2DConv2D activation_17/Relu:activations:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
paddingSAME*
strides
2
conv2d_10/Conv2D
activation_18/ReluReluconv2d_10/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
activation_18/Relu³
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_11/Conv2D/ReadVariableOpÛ
conv2d_11/Conv2DConv2D activation_18/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
conv2d_11/Conv2D
activation_19/ReluReluconv2d_11/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_19/Relu³
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_12/Conv2D/ReadVariableOpÛ
conv2d_12/Conv2DConv2D activation_19/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
conv2d_12/Conv2D
activation_20/ReluReluconv2d_12/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_20/Relu³
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_13/Conv2D/ReadVariableOpÛ
conv2d_13/Conv2DConv2D activation_20/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
conv2d_13/Conv2D
activation_21/ReluReluconv2d_13/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_21/Relu³
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_14/Conv2D/ReadVariableOpÛ
conv2d_14/Conv2DConv2D activation_21/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
conv2d_14/Conv2D
activation_22/ReluReluconv2d_14/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_22/Relu³
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_15/Conv2D/ReadVariableOpÛ
conv2d_15/Conv2DConv2D activation_22/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_15/Conv2D
activation_23/ReluReluconv2d_15/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_23/Relu
conv2d_transpose_9/ShapeShape activation_23/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_9/Shape
&conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_9/strided_slice/stack
(conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_9/strided_slice/stack_1
(conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_9/strided_slice/stack_2Ô
 conv2d_transpose_9/strided_sliceStridedSlice!conv2d_transpose_9/Shape:output:0/conv2d_transpose_9/strided_slice/stack:output:01conv2d_transpose_9/strided_slice/stack_1:output:01conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_9/strided_slicez
conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_9/stack/1z
conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_9/stack/2z
conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_9/stack/3
conv2d_transpose_9/stackPack)conv2d_transpose_9/strided_slice:output:0#conv2d_transpose_9/stack/1:output:0#conv2d_transpose_9/stack/2:output:0#conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_9/stack
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_9/strided_slice_1/stack¢
*conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_9/strided_slice_1/stack_1¢
*conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_9/strided_slice_1/stack_2Þ
"conv2d_transpose_9/strided_slice_1StridedSlice!conv2d_transpose_9/stack:output:01conv2d_transpose_9/strided_slice_1/stack:output:03conv2d_transpose_9/strided_slice_1/stack_1:output:03conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_9/strided_slice_1ì
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype024
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpÄ
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInput!conv2d_transpose_9/stack:output:0:conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0 activation_23/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2%
#conv2d_transpose_9/conv2d_transpose
activation_24/ReluRelu,conv2d_transpose_9/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_24/Relu
conv2d_transpose_10/ShapeShape activation_24/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_10/Shape
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_10/strided_slice/stack 
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_1 
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_2Ú
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_10/strided_slice|
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_10/stack/1|
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_10/stack/2|
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_10/stack/3
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_10/stack 
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_10/strided_slice_1/stack¤
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_1¤
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_2ä
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_10/strided_slice_1ï
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpÈ
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0 activation_24/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_10/conv2d_transpose
activation_25/ReluRelu-conv2d_transpose_10/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_25/Relu
	add_4/addAddV2 activation_25/Relu:activations:0 activation_22/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
	add_4/adds
conv2d_transpose_11/ShapeShapeadd_4/add:z:0*
T0*
_output_shapes
:2
conv2d_transpose_11/Shape
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_11/strided_slice/stack 
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_1 
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_2Ú
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_11/strided_slice|
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_11/stack/1|
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_11/stack/2|
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/3
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_11/stack 
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_11/strided_slice_1/stack¤
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_1¤
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_2ä
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_11/strided_slice_1ï
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpµ
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0add_4/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_11/conv2d_transpose
activation_26/ReluRelu-conv2d_transpose_11/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_26/Relu
conv2d_transpose_12/ShapeShape activation_26/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_12/Shape
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stack 
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1 
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2Ú
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_12/stack/2|
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_12/stack/3
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stack 
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stack¤
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1¤
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2ä
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1ï
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpÈ
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0 activation_26/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose
activation_27/ReluRelu-conv2d_transpose_12/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_27/Relu
	add_5/addAddV2 activation_27/Relu:activations:0 activation_20/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
	add_5/adds
conv2d_transpose_13/ShapeShapeadd_5/add:z:0*
T0*
_output_shapes
:2
conv2d_transpose_13/Shape
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stack 
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1 
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2Ú
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_13/stack/3
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stack 
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stack¤
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1¤
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2ä
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1ï
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpµ
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0add_5/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose
activation_28/ReluRelu-conv2d_transpose_13/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
activation_28/Relu
conv2d_transpose_14/ShapeShape activation_28/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_14/Shape
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stack 
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1 
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2Ú
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_14/stack/1|
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_14/stack/3
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stack 
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stack¤
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1¤
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2ä
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1ï
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpÈ
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0 activation_28/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose
activation_29/ReluRelu-conv2d_transpose_14/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
activation_29/Relu
	add_6/addAddV2 activation_29/Relu:activations:0 activation_18/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
	add_6/adds
conv2d_transpose_15/ShapeShapeadd_6/add:z:0*
T0*
_output_shapes
:2
conv2d_transpose_15/Shape
'conv2d_transpose_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_15/strided_slice/stack 
)conv2d_transpose_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_15/strided_slice/stack_1 
)conv2d_transpose_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_15/strided_slice/stack_2Ú
!conv2d_transpose_15/strided_sliceStridedSlice"conv2d_transpose_15/Shape:output:00conv2d_transpose_15/strided_slice/stack:output:02conv2d_transpose_15/strided_slice/stack_1:output:02conv2d_transpose_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_15/strided_slice|
conv2d_transpose_15/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_15/stack/1|
conv2d_transpose_15/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_15/stack/2|
conv2d_transpose_15/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_15/stack/3
conv2d_transpose_15/stackPack*conv2d_transpose_15/strided_slice:output:0$conv2d_transpose_15/stack/1:output:0$conv2d_transpose_15/stack/2:output:0$conv2d_transpose_15/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_15/stack 
)conv2d_transpose_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_15/strided_slice_1/stack¤
+conv2d_transpose_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_15/strided_slice_1/stack_1¤
+conv2d_transpose_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_15/strided_slice_1/stack_2ä
#conv2d_transpose_15/strided_slice_1StridedSlice"conv2d_transpose_15/stack:output:02conv2d_transpose_15/strided_slice_1/stack:output:04conv2d_transpose_15/strided_slice_1/stack_1:output:04conv2d_transpose_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_15/strided_slice_1ï
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_15_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype025
3conv2d_transpose_15/conv2d_transpose/ReadVariableOpµ
$conv2d_transpose_15/conv2d_transposeConv2DBackpropInput"conv2d_transpose_15/stack:output:0;conv2d_transpose_15/conv2d_transpose/ReadVariableOp:value:0add_6/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2&
$conv2d_transpose_15/conv2d_transpose
activation_30/ReluRelu-conv2d_transpose_15/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
activation_30/Relu
conv2d_transpose_16/ShapeShape activation_30/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_16/Shape
'conv2d_transpose_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_16/strided_slice/stack 
)conv2d_transpose_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_16/strided_slice/stack_1 
)conv2d_transpose_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_16/strided_slice/stack_2Ú
!conv2d_transpose_16/strided_sliceStridedSlice"conv2d_transpose_16/Shape:output:00conv2d_transpose_16/strided_slice/stack:output:02conv2d_transpose_16/strided_slice/stack_1:output:02conv2d_transpose_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_16/strided_slice|
conv2d_transpose_16/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_16/stack/1|
conv2d_transpose_16/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_16/stack/2|
conv2d_transpose_16/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_16/stack/3
conv2d_transpose_16/stackPack*conv2d_transpose_16/strided_slice:output:0$conv2d_transpose_16/stack/1:output:0$conv2d_transpose_16/stack/2:output:0$conv2d_transpose_16/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_16/stack 
)conv2d_transpose_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_16/strided_slice_1/stack¤
+conv2d_transpose_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_16/strided_slice_1/stack_1¤
+conv2d_transpose_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_16/strided_slice_1/stack_2ä
#conv2d_transpose_16/strided_slice_1StridedSlice"conv2d_transpose_16/stack:output:02conv2d_transpose_16/strided_slice_1/stack:output:04conv2d_transpose_16/strided_slice_1/stack_1:output:04conv2d_transpose_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_16/strided_slice_1ï
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_16_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3conv2d_transpose_16/conv2d_transpose/ReadVariableOpÈ
$conv2d_transpose_16/conv2d_transposeConv2DBackpropInput"conv2d_transpose_16/stack:output:0;conv2d_transpose_16/conv2d_transpose/ReadVariableOp:value:0 activation_30/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2&
$conv2d_transpose_16/conv2d_transpose
activation_31/ReluRelu-conv2d_transpose_16/conv2d_transpose:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
activation_31/Relu
	add_7/addAddV2 activation_31/Relu:activations:0 activation_16/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
	add_7/adds
conv2d_transpose_17/ShapeShapeadd_7/add:z:0*
T0*
_output_shapes
:2
conv2d_transpose_17/Shape
'conv2d_transpose_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_17/strided_slice/stack 
)conv2d_transpose_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_17/strided_slice/stack_1 
)conv2d_transpose_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_17/strided_slice/stack_2Ú
!conv2d_transpose_17/strided_sliceStridedSlice"conv2d_transpose_17/Shape:output:00conv2d_transpose_17/strided_slice/stack:output:02conv2d_transpose_17/strided_slice/stack_1:output:02conv2d_transpose_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_17/strided_slice|
conv2d_transpose_17/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_17/stack/1|
conv2d_transpose_17/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(2
conv2d_transpose_17/stack/2|
conv2d_transpose_17/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_17/stack/3
conv2d_transpose_17/stackPack*conv2d_transpose_17/strided_slice:output:0$conv2d_transpose_17/stack/1:output:0$conv2d_transpose_17/stack/2:output:0$conv2d_transpose_17/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_17/stack 
)conv2d_transpose_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_17/strided_slice_1/stack¤
+conv2d_transpose_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_17/strided_slice_1/stack_1¤
+conv2d_transpose_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_17/strided_slice_1/stack_2ä
#conv2d_transpose_17/strided_slice_1StridedSlice"conv2d_transpose_17/stack:output:02conv2d_transpose_17/strided_slice_1/stack:output:04conv2d_transpose_17/strided_slice_1/stack_1:output:04conv2d_transpose_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_17/strided_slice_1ï
3conv2d_transpose_17/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_17_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_17/conv2d_transpose/ReadVariableOpµ
$conv2d_transpose_17/conv2d_transposeConv2DBackpropInput"conv2d_transpose_17/stack:output:0;conv2d_transpose_17/conv2d_transpose/ReadVariableOp:value:0add_7/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2&
$conv2d_transpose_17/conv2d_transposeÈ
*conv2d_transpose_17/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_17/BiasAdd/ReadVariableOpâ
conv2d_transpose_17/BiasAddBiasAdd-conv2d_transpose_17/conv2d_transpose:output:02conv2d_transpose_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
conv2d_transpose_17/BiasAdd 
IdentityIdentity$conv2d_transpose_17/BiasAdd:output:0 ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp4^conv2d_transpose_12/conv2d_transpose/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp4^conv2d_transpose_15/conv2d_transpose/ReadVariableOp4^conv2d_transpose_16/conv2d_transpose/ReadVariableOp+^conv2d_transpose_17/BiasAdd/ReadVariableOp4^conv2d_transpose_17/conv2d_transpose/ReadVariableOp3^conv2d_transpose_9/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_15/conv2d_transpose/ReadVariableOp3conv2d_transpose_15/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_16/conv2d_transpose/ReadVariableOp3conv2d_transpose_16/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_17/BiasAdd/ReadVariableOp*conv2d_transpose_17/BiasAdd/ReadVariableOp2j
3conv2d_transpose_17/conv2d_transpose/ReadVariableOp3conv2d_transpose_17/conv2d_transpose/ReadVariableOp2h
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2conv2d_transpose_9/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
Ë
f
J__inference_activation_29_layer_call_and_return_conditional_losses_1050500

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

¶
E__inference_conv2d_8_layer_call_and_return_conditional_losses_1050238

inputs8
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
ë
K
/__inference_activation_18_layer_call_fn_1050291

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_10489122
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(( :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
 
_user_specified_nameinputs
´
K
/__inference_activation_30_layer_call_fn_1050517

inputs
identityå
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10490962
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

·
F__inference_conv2d_10_layer_call_and_return_conditional_losses_1050286

inputs8
conv2d_readvariableop_resource:@ 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs

S
'__inference_add_5_layer_call_fn_1050474
inputs_0
inputs_1
identityØ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_5_layer_call_and_return_conditional_losses_10490582
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ((:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
inputs/1

f
J__inference_activation_19_layer_call_and_return_conditional_losses_1050320

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
Ë
f
J__inference_activation_30_layer_call_and_return_conditional_losses_1050522

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

¶
E__inference_conv2d_9_layer_call_and_return_conditional_losses_1048885

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs

f
J__inference_activation_17_layer_call_and_return_conditional_losses_1050272

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs

·
F__inference_conv2d_13_layer_call_and_return_conditional_losses_1048957

inputs8
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
2
Conv2D
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
¢

+__inference_conv2d_13_layer_call_fn_1050351

inputs!
unknown:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_10489572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
´
K
/__inference_activation_27_layer_call_fn_1050463

inputs
identityå
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_27_layer_call_and_return_conditional_losses_10490502
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ

5__inference_conv2d_transpose_16_layer_call_fn_1048809

inputs!
unknown:@@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_10488012
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
þ

5__inference_conv2d_transpose_15_layer_call_fn_1048770

inputs!
unknown:@ 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_10487622
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ì
ô
 __inference__traced_save_1050750
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop/
+savev2_conv2d_12_kernel_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop8
4savev2_conv2d_transpose_9_kernel_read_readvariableop9
5savev2_conv2d_transpose_10_kernel_read_readvariableop9
5savev2_conv2d_transpose_11_kernel_read_readvariableop9
5savev2_conv2d_transpose_12_kernel_read_readvariableop9
5savev2_conv2d_transpose_13_kernel_read_readvariableop9
5savev2_conv2d_transpose_14_kernel_read_readvariableop9
5savev2_conv2d_transpose_15_kernel_read_readvariableop9
5savev2_conv2d_transpose_16_kernel_read_readvariableop9
5savev2_conv2d_transpose_17_kernel_read_readvariableop7
3savev2_conv2d_transpose_17_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_m_read_readvariableop6
2savev2_adam_conv2d_13_kernel_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop?
;savev2_adam_conv2d_transpose_9_kernel_m_read_readvariableop@
<savev2_adam_conv2d_transpose_10_kernel_m_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop@
<savev2_adam_conv2d_transpose_12_kernel_m_read_readvariableop@
<savev2_adam_conv2d_transpose_13_kernel_m_read_readvariableop@
<savev2_adam_conv2d_transpose_14_kernel_m_read_readvariableop@
<savev2_adam_conv2d_transpose_15_kernel_m_read_readvariableop@
<savev2_adam_conv2d_transpose_16_kernel_m_read_readvariableop@
<savev2_adam_conv2d_transpose_17_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_17_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop6
2savev2_adam_conv2d_15_kernel_v_read_readvariableop?
;savev2_adam_conv2d_transpose_9_kernel_v_read_readvariableop@
<savev2_adam_conv2d_transpose_10_kernel_v_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop@
<savev2_adam_conv2d_transpose_12_kernel_v_read_readvariableop@
<savev2_adam_conv2d_transpose_13_kernel_v_read_readvariableop@
<savev2_adam_conv2d_transpose_14_kernel_v_read_readvariableop@
<savev2_adam_conv2d_transpose_15_kernel_v_read_readvariableop@
<savev2_adam_conv2d_transpose_16_kernel_v_read_readvariableop@
<savev2_adam_conv2d_transpose_17_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_17_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÄ#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*Ö"
valueÌ"BÉ">B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*
valueB>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop+savev2_conv2d_12_kernel_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop4savev2_conv2d_transpose_9_kernel_read_readvariableop5savev2_conv2d_transpose_10_kernel_read_readvariableop5savev2_conv2d_transpose_11_kernel_read_readvariableop5savev2_conv2d_transpose_12_kernel_read_readvariableop5savev2_conv2d_transpose_13_kernel_read_readvariableop5savev2_conv2d_transpose_14_kernel_read_readvariableop5savev2_conv2d_transpose_15_kernel_read_readvariableop5savev2_conv2d_transpose_16_kernel_read_readvariableop5savev2_conv2d_transpose_17_kernel_read_readvariableop3savev2_conv2d_transpose_17_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop;savev2_adam_conv2d_transpose_9_kernel_m_read_readvariableop<savev2_adam_conv2d_transpose_10_kernel_m_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop<savev2_adam_conv2d_transpose_12_kernel_m_read_readvariableop<savev2_adam_conv2d_transpose_13_kernel_m_read_readvariableop<savev2_adam_conv2d_transpose_14_kernel_m_read_readvariableop<savev2_adam_conv2d_transpose_15_kernel_m_read_readvariableop<savev2_adam_conv2d_transpose_16_kernel_m_read_readvariableop<savev2_adam_conv2d_transpose_17_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_17_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop;savev2_adam_conv2d_transpose_9_kernel_v_read_readvariableop<savev2_adam_conv2d_transpose_10_kernel_v_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop<savev2_adam_conv2d_transpose_12_kernel_v_read_readvariableop<savev2_adam_conv2d_transpose_13_kernel_v_read_readvariableop<savev2_adam_conv2d_transpose_14_kernel_v_read_readvariableop<savev2_adam_conv2d_transpose_15_kernel_v_read_readvariableop<savev2_adam_conv2d_transpose_16_kernel_v_read_readvariableop<savev2_adam_conv2d_transpose_17_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *L
dtypesB
@2>	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ï
_input_shapes½
º: :@:@@:@ : :::::::::: :@ :@@:@:: : : : : : : :@:@@:@ : :::::::::: :@ :@@:@::@:@@:@ : :::::::::: :@ :@@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@ :,(
&
_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,	(
&
_output_shapes
::,
(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
: :,(
&
_output_shapes
:@ :,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@ :,(
&
_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
::, (
&
_output_shapes
::,!(
&
_output_shapes
::,"(
&
_output_shapes
::,#(
&
_output_shapes
::,$(
&
_output_shapes
::,%(
&
_output_shapes
::,&(
&
_output_shapes
::,'(
&
_output_shapes
: :,((
&
_output_shapes
:@ :,)(
&
_output_shapes
:@@:,*(
&
_output_shapes
:@: +

_output_shapes
::,,(
&
_output_shapes
:@:,-(
&
_output_shapes
:@@:,.(
&
_output_shapes
:@ :,/(
&
_output_shapes
: :,0(
&
_output_shapes
::,1(
&
_output_shapes
::,2(
&
_output_shapes
::,3(
&
_output_shapes
::,4(
&
_output_shapes
::,5(
&
_output_shapes
::,6(
&
_output_shapes
::,7(
&
_output_shapes
::,8(
&
_output_shapes
::,9(
&
_output_shapes
: :,:(
&
_output_shapes
:@ :,;(
&
_output_shapes
:@@:,<(
&
_output_shapes
:@: =

_output_shapes
::>

_output_shapes
: 
ò 
Õ
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1048606

inputsB
(conv2d_transpose_readvariableop_resource:
identity¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose©
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_activation_18_layer_call_and_return_conditional_losses_1050296

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(( :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( 
 
_user_specified_nameinputs
Ë
f
J__inference_activation_24_layer_call_and_return_conditional_losses_1049012

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

l
B__inference_add_5_layer_call_and_return_conditional_losses_1049058

inputs
inputs_1
identity_
addAddV2inputsinputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ((:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
 
_user_specified_nameinputs
´
K
/__inference_activation_29_layer_call_fn_1050495

inputs
identityå
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_29_layer_call_and_return_conditional_losses_10490782
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

S
'__inference_add_4_layer_call_fn_1050442
inputs_0
inputs_1
identityØ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_4_layer_call_and_return_conditional_losses_10490302
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ((:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
inputs/1
Ë
f
J__inference_activation_26_layer_call_and_return_conditional_losses_1050458

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
f
J__inference_activation_28_layer_call_and_return_conditional_losses_1050490

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 

D__inference_model_1_layer_call_and_return_conditional_losses_1049626
input_13*
conv2d_8_1049552:@*
conv2d_9_1049556:@@+
conv2d_10_1049560:@ +
conv2d_11_1049564: +
conv2d_12_1049568:+
conv2d_13_1049572:+
conv2d_14_1049576:+
conv2d_15_1049580:4
conv2d_transpose_9_1049584:5
conv2d_transpose_10_1049588:5
conv2d_transpose_11_1049593:5
conv2d_transpose_12_1049597:5
conv2d_transpose_13_1049602:5
conv2d_transpose_14_1049606: 5
conv2d_transpose_15_1049611:@ 5
conv2d_transpose_16_1049615:@@5
conv2d_transpose_17_1049620:@)
conv2d_transpose_17_1049622:
identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢!conv2d_12/StatefulPartitionedCall¢!conv2d_13/StatefulPartitionedCall¢!conv2d_14/StatefulPartitionedCall¢!conv2d_15/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢+conv2d_transpose_10/StatefulPartitionedCall¢+conv2d_transpose_11/StatefulPartitionedCall¢+conv2d_transpose_12/StatefulPartitionedCall¢+conv2d_transpose_13/StatefulPartitionedCall¢+conv2d_transpose_14/StatefulPartitionedCall¢+conv2d_transpose_15/StatefulPartitionedCall¢+conv2d_transpose_16/StatefulPartitionedCall¢+conv2d_transpose_17/StatefulPartitionedCall¢*conv2d_transpose_9/StatefulPartitionedCall
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_13conv2d_8_1049552*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_10488672"
 conv2d_8/StatefulPartitionedCall
activation_16/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_10488762
activation_16/PartitionedCall®
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall&activation_16/PartitionedCall:output:0conv2d_9_1049556*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_9_layer_call_and_return_conditional_losses_10488852"
 conv2d_9/StatefulPartitionedCall
activation_17/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_10488942
activation_17/PartitionedCall²
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall&activation_17/PartitionedCall:output:0conv2d_10_1049560*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_10489032#
!conv2d_10/StatefulPartitionedCall
activation_18/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_18_layer_call_and_return_conditional_losses_10489122
activation_18/PartitionedCall²
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall&activation_18/PartitionedCall:output:0conv2d_11_1049564*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_10489212#
!conv2d_11/StatefulPartitionedCall
activation_19/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_19_layer_call_and_return_conditional_losses_10489302
activation_19/PartitionedCall²
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall&activation_19/PartitionedCall:output:0conv2d_12_1049568*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_10489392#
!conv2d_12/StatefulPartitionedCall
activation_20/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_20_layer_call_and_return_conditional_losses_10489482
activation_20/PartitionedCall²
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall&activation_20/PartitionedCall:output:0conv2d_13_1049572*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_10489572#
!conv2d_13/StatefulPartitionedCall
activation_21/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_21_layer_call_and_return_conditional_losses_10489662
activation_21/PartitionedCall²
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall&activation_21/PartitionedCall:output:0conv2d_14_1049576*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_10489752#
!conv2d_14/StatefulPartitionedCall
activation_22/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_22_layer_call_and_return_conditional_losses_10489842
activation_22/PartitionedCall²
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0conv2d_15_1049580*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_10489932#
!conv2d_15/StatefulPartitionedCall
activation_23/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_23_layer_call_and_return_conditional_losses_10490022
activation_23/PartitionedCallè
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall&activation_23/PartitionedCall:output:0conv2d_transpose_9_1049584*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_10485282,
*conv2d_transpose_9/StatefulPartitionedCall®
activation_24/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_24_layer_call_and_return_conditional_losses_10490122
activation_24/PartitionedCallì
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0conv2d_transpose_10_1049588*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_10485672-
+conv2d_transpose_10/StatefulPartitionedCall¯
activation_25/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_25_layer_call_and_return_conditional_losses_10490222
activation_25/PartitionedCall 
add_4/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0&activation_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_4_layer_call_and_return_conditional_losses_10490302
add_4/PartitionedCallä
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCalladd_4/PartitionedCall:output:0conv2d_transpose_11_1049593*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_10486062-
+conv2d_transpose_11/StatefulPartitionedCall¯
activation_26/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_26_layer_call_and_return_conditional_losses_10490402
activation_26/PartitionedCallì
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall&activation_26/PartitionedCall:output:0conv2d_transpose_12_1049597*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_10486452-
+conv2d_transpose_12/StatefulPartitionedCall¯
activation_27/PartitionedCallPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_27_layer_call_and_return_conditional_losses_10490502
activation_27/PartitionedCall 
add_5/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0&activation_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_5_layer_call_and_return_conditional_losses_10490582
add_5/PartitionedCallä
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0conv2d_transpose_13_1049602*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_10486842-
+conv2d_transpose_13/StatefulPartitionedCall¯
activation_28/PartitionedCallPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_28_layer_call_and_return_conditional_losses_10490682
activation_28/PartitionedCallì
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0conv2d_transpose_14_1049606*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_10487232-
+conv2d_transpose_14/StatefulPartitionedCall¯
activation_29/PartitionedCallPartitionedCall4conv2d_transpose_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_29_layer_call_and_return_conditional_losses_10490782
activation_29/PartitionedCall 
add_6/PartitionedCallPartitionedCall&activation_29/PartitionedCall:output:0&activation_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_6_layer_call_and_return_conditional_losses_10490862
add_6/PartitionedCallä
+conv2d_transpose_15/StatefulPartitionedCallStatefulPartitionedCalladd_6/PartitionedCall:output:0conv2d_transpose_15_1049611*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_10487622-
+conv2d_transpose_15/StatefulPartitionedCall¯
activation_30/PartitionedCallPartitionedCall4conv2d_transpose_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10490962
activation_30/PartitionedCallì
+conv2d_transpose_16/StatefulPartitionedCallStatefulPartitionedCall&activation_30/PartitionedCall:output:0conv2d_transpose_16_1049615*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_10488012-
+conv2d_transpose_16/StatefulPartitionedCall¯
activation_31/PartitionedCallPartitionedCall4conv2d_transpose_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10491062
activation_31/PartitionedCall 
add_7/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_add_7_layer_call_and_return_conditional_losses_10491142
add_7/PartitionedCall
+conv2d_transpose_17/StatefulPartitionedCallStatefulPartitionedCalladd_7/PartitionedCall:output:0conv2d_transpose_17_1049620conv2d_transpose_17_1049622*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_10488432-
+conv2d_transpose_17/StatefulPartitionedCallÝ
IdentityIdentity4conv2d_transpose_17/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall,^conv2d_transpose_15/StatefulPartitionedCall,^conv2d_transpose_16/StatefulPartitionedCall,^conv2d_transpose_17/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ((: : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2Z
+conv2d_transpose_15/StatefulPartitionedCall+conv2d_transpose_15/StatefulPartitionedCall2Z
+conv2d_transpose_16/StatefulPartitionedCall+conv2d_transpose_16/StatefulPartitionedCall2Z
+conv2d_transpose_17/StatefulPartitionedCall+conv2d_transpose_17/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
"
_user_specified_name
input_13"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*È
serving_default´
E
input_139
serving_default_input_13:0ÿÿÿÿÿÿÿÿÿ((O
conv2d_transpose_178
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ((tensorflow/serving/predict:àº
Ù³
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer-21
layer_with_weights-10
layer-22
layer-23
layer_with_weights-11
layer-24
layer-25
layer-26
layer_with_weights-12
layer-27
layer-28
layer_with_weights-13
layer-29
layer-30
 layer-31
!layer_with_weights-14
!layer-32
"layer-33
#layer_with_weights-15
#layer-34
$layer-35
%layer-36
&layer_with_weights-16
&layer-37
'	optimizer
(trainable_variables
)regularization_losses
*	variables
+	keras_api
,
signatures
¿__call__
À_default_save_signature
+Á&call_and_return_all_conditional_losses"¿ª
_tf_keras_network¢ª{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 40, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_13"}, "name": "input_13", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_8", "inbound_nodes": [[["input_13", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_16", "inbound_nodes": [[["conv2d_8", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_9", "inbound_nodes": [[["activation_16", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_17", "inbound_nodes": [[["conv2d_9", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["activation_17", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_18", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_11", "inbound_nodes": [[["activation_18", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_19", "inbound_nodes": [[["conv2d_11", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["activation_19", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_20", "inbound_nodes": [[["conv2d_12", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_13", "inbound_nodes": [[["activation_20", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_21", "inbound_nodes": [[["conv2d_13", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_14", "inbound_nodes": [[["activation_21", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_22", "inbound_nodes": [[["conv2d_14", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["activation_22", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_23", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_9", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_9", "inbound_nodes": [[["activation_23", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_24", "inbound_nodes": [[["conv2d_transpose_9", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_10", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_10", "inbound_nodes": [[["activation_24", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_25", "inbound_nodes": [[["conv2d_transpose_10", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add_4", "trainable": true, "dtype": "float32"}, "name": "add_4", "inbound_nodes": [[["activation_25", 0, 0, {}], ["activation_22", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_11", "inbound_nodes": [[["add_4", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_26", "inbound_nodes": [[["conv2d_transpose_11", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_12", "inbound_nodes": [[["activation_26", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_27", "inbound_nodes": [[["conv2d_transpose_12", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add_5", "trainable": true, "dtype": "float32"}, "name": "add_5", "inbound_nodes": [[["activation_27", 0, 0, {}], ["activation_20", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_13", "inbound_nodes": [[["add_5", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_28", "inbound_nodes": [[["conv2d_transpose_13", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_14", "inbound_nodes": [[["activation_28", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_29", "inbound_nodes": [[["conv2d_transpose_14", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add_6", "trainable": true, "dtype": "float32"}, "name": "add_6", "inbound_nodes": [[["activation_29", 0, 0, {}], ["activation_18", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_15", "inbound_nodes": [[["add_6", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_30", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_30", "inbound_nodes": [[["conv2d_transpose_15", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_16", "inbound_nodes": [[["activation_30", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_31", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_31", "inbound_nodes": [[["conv2d_transpose_16", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add_7", "trainable": true, "dtype": "float32"}, "name": "add_7", "inbound_nodes": [[["activation_31", 0, 0, {}], ["activation_16", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_17", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_17", "inbound_nodes": [[["add_7", 0, 0, {}]]]}], "input_layers": [["input_13", 0, 0]], "output_layers": [["conv2d_transpose_17", 0, 0]]}, "shared_object_id": 72, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 40, 40, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 40, 40, 1]}, "float32", "input_13"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 40, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_13"}, "name": "input_13", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_8", "inbound_nodes": [[["input_13", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_16", "inbound_nodes": [[["conv2d_8", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_9", "inbound_nodes": [[["activation_16", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_17", "inbound_nodes": [[["conv2d_9", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["activation_17", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_18", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_11", "inbound_nodes": [[["activation_18", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_19", "inbound_nodes": [[["conv2d_11", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["activation_19", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_20", "inbound_nodes": [[["conv2d_12", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_13", "inbound_nodes": [[["activation_20", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_21", "inbound_nodes": [[["conv2d_13", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_14", "inbound_nodes": [[["activation_21", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_22", "inbound_nodes": [[["conv2d_14", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["activation_22", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_23", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 32}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_9", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_9", "inbound_nodes": [[["activation_23", 0, 0, {}]]], "shared_object_id": 35}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_24", "inbound_nodes": [[["conv2d_transpose_9", 0, 0, {}]]], "shared_object_id": 36}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_10", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_10", "inbound_nodes": [[["activation_24", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_25", "inbound_nodes": [[["conv2d_transpose_10", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "Add", "config": {"name": "add_4", "trainable": true, "dtype": "float32"}, "name": "add_4", "inbound_nodes": [[["activation_25", 0, 0, {}], ["activation_22", 0, 0, {}]]], "shared_object_id": 41}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_11", "inbound_nodes": [[["add_4", 0, 0, {}]]], "shared_object_id": 44}, {"class_name": "Activation", "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_26", "inbound_nodes": [[["conv2d_transpose_11", 0, 0, {}]]], "shared_object_id": 45}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_12", "inbound_nodes": [[["activation_26", 0, 0, {}]]], "shared_object_id": 48}, {"class_name": "Activation", "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_27", "inbound_nodes": [[["conv2d_transpose_12", 0, 0, {}]]], "shared_object_id": 49}, {"class_name": "Add", "config": {"name": "add_5", "trainable": true, "dtype": "float32"}, "name": "add_5", "inbound_nodes": [[["activation_27", 0, 0, {}], ["activation_20", 0, 0, {}]]], "shared_object_id": 50}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 51}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_13", "inbound_nodes": [[["add_5", 0, 0, {}]]], "shared_object_id": 53}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_28", "inbound_nodes": [[["conv2d_transpose_13", 0, 0, {}]]], "shared_object_id": 54}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 55}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 56}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_14", "inbound_nodes": [[["activation_28", 0, 0, {}]]], "shared_object_id": 57}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_29", "inbound_nodes": [[["conv2d_transpose_14", 0, 0, {}]]], "shared_object_id": 58}, {"class_name": "Add", "config": {"name": "add_6", "trainable": true, "dtype": "float32"}, "name": "add_6", "inbound_nodes": [[["activation_29", 0, 0, {}], ["activation_18", 0, 0, {}]]], "shared_object_id": 59}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_15", "inbound_nodes": [[["add_6", 0, 0, {}]]], "shared_object_id": 62}, {"class_name": "Activation", "config": {"name": "activation_30", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_30", "inbound_nodes": [[["conv2d_transpose_15", 0, 0, {}]]], "shared_object_id": 63}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_16", "inbound_nodes": [[["activation_30", 0, 0, {}]]], "shared_object_id": 66}, {"class_name": "Activation", "config": {"name": "activation_31", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_31", "inbound_nodes": [[["conv2d_transpose_16", 0, 0, {}]]], "shared_object_id": 67}, {"class_name": "Add", "config": {"name": "add_7", "trainable": true, "dtype": "float32"}, "name": "add_7", "inbound_nodes": [[["activation_31", 0, 0, {}], ["activation_16", 0, 0, {}]]], "shared_object_id": 68}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_17", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 69}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 70}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_17", "inbound_nodes": [[["add_7", 0, 0, {}]]], "shared_object_id": 71}], "input_layers": [["input_13", 0, 0]], "output_layers": [["conv2d_transpose_17", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999974752427e-07, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
û"ø
_tf_keras_input_layerØ{"class_name": "InputLayer", "name": "input_13", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 40, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 40, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_13"}}
ÿ


-kernel
.trainable_variables
/regularization_losses
0	variables
1	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses"â	
_tf_keras_layerÈ	{"name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_13", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 74}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 1]}}

2trainable_variables
3regularization_losses
4	variables
5	keras_api
Ä__call__
+Å&call_and_return_all_conditional_losses"
_tf_keras_layerò{"name": "activation_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_8", 0, 0, {}]]], "shared_object_id": 4}


6kernel
7trainable_variables
8regularization_losses
9	variables
:	keras_api
Æ__call__
+Ç&call_and_return_all_conditional_losses"é	
_tf_keras_layerÏ	{"name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_16", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 64]}}

;trainable_variables
<regularization_losses
=	variables
>	keras_api
È__call__
+É&call_and_return_all_conditional_losses"
_tf_keras_layerò{"name": "activation_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_9", 0, 0, {}]]], "shared_object_id": 8}


?kernel
@trainable_variables
Aregularization_losses
B	variables
C	keras_api
Ê__call__
+Ë&call_and_return_all_conditional_losses"í	
_tf_keras_layerÓ	{"name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_17", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 76}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 64]}}

Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
Ì__call__
+Í&call_and_return_all_conditional_losses"
_tf_keras_layerô{"name": "activation_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_10", 0, 0, {}]]], "shared_object_id": 12}


Hkernel
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses"î	
_tf_keras_layerÔ	{"name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_18", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 77}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 32]}}

Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses"
_tf_keras_layerô{"name": "activation_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_11", 0, 0, {}]]], "shared_object_id": 16}


Qkernel
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
Ò__call__
+Ó&call_and_return_all_conditional_losses"í	
_tf_keras_layerÓ	{"name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_19", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 78}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 16]}}

Vtrainable_variables
Wregularization_losses
X	variables
Y	keras_api
Ô__call__
+Õ&call_and_return_all_conditional_losses"
_tf_keras_layerô{"name": "activation_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_12", 0, 0, {}]]], "shared_object_id": 20}


Zkernel
[trainable_variables
\regularization_losses
]	variables
^	keras_api
Ö__call__
+×&call_and_return_all_conditional_losses"ë	
_tf_keras_layerÑ	{"name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_20", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}, "shared_object_id": 79}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 8]}}

_trainable_variables
`regularization_losses
a	variables
b	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses"
_tf_keras_layerô{"name": "activation_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_13", 0, 0, {}]]], "shared_object_id": 24}


ckernel
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
Ú__call__
+Û&call_and_return_all_conditional_losses"ë	
_tf_keras_layerÑ	{"name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_21", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}, "shared_object_id": 80}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 8]}}

htrainable_variables
iregularization_losses
j	variables
k	keras_api
Ü__call__
+Ý&call_and_return_all_conditional_losses"
_tf_keras_layerô{"name": "activation_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_14", 0, 0, {}]]], "shared_object_id": 28}


lkernel
mtrainable_variables
nregularization_losses
o	variables
p	keras_api
Þ__call__
+ß&call_and_return_all_conditional_losses"ë	
_tf_keras_layerÑ	{"name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_22", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}, "shared_object_id": 81}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 8]}}

qtrainable_variables
rregularization_losses
s	variables
t	keras_api
à__call__
+á&call_and_return_all_conditional_losses"
_tf_keras_layerô{"name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 32}
»

ukernel
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
â__call__
+ã&call_and_return_all_conditional_losses"

_tf_keras_layer
{"name": "conv2d_transpose_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_9", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["activation_23", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 8}}, "shared_object_id": 82}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 20, 8]}}
¨
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
ä__call__
+å&call_and_return_all_conditional_losses"
_tf_keras_layerý{"name": "activation_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_transpose_9", 0, 0, {}]]], "shared_object_id": 36}
À

~kernel
trainable_variables
regularization_losses
	variables
	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses" 

_tf_keras_layer
{"name": "conv2d_transpose_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_10", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["activation_24", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 8}}, "shared_object_id": 83}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 8]}}
­
trainable_variables
regularization_losses
	variables
	keras_api
è__call__
+é&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"name": "activation_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_transpose_10", 0, 0, {}]]], "shared_object_id": 40}
¤
trainable_variables
regularization_losses
	variables
	keras_api
ê__call__
+ë&call_and_return_all_conditional_losses"
_tf_keras_layerõ{"name": "add_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Add", "config": {"name": "add_4", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["activation_25", 0, 0, {}], ["activation_22", 0, 0, {}]]], "shared_object_id": 41, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 40, 40, 8]}, {"class_name": "TensorShape", "items": [null, 40, 40, 8]}]}
º
kernel
trainable_variables
regularization_losses
	variables
	keras_api
ì__call__
+í&call_and_return_all_conditional_losses"

_tf_keras_layerþ	{"name": "conv2d_transpose_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["add_4", 0, 0, {}]]], "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 8}}, "shared_object_id": 84}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 8]}}
­
trainable_variables
regularization_losses
	variables
	keras_api
î__call__
+ï&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"name": "activation_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_transpose_11", 0, 0, {}]]], "shared_object_id": 45}
Â
kernel
trainable_variables
regularization_losses
	variables
	keras_api
ð__call__
+ñ&call_and_return_all_conditional_losses" 

_tf_keras_layer
{"name": "conv2d_transpose_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["activation_26", 0, 0, {}]]], "shared_object_id": 48, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 8}}, "shared_object_id": 85}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 8]}}
­
trainable_variables
regularization_losses
	variables
	keras_api
ò__call__
+ó&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"name": "activation_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_transpose_12", 0, 0, {}]]], "shared_object_id": 49}
¤
trainable_variables
regularization_losses
	variables
 	keras_api
ô__call__
+õ&call_and_return_all_conditional_losses"
_tf_keras_layerõ{"name": "add_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Add", "config": {"name": "add_5", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["activation_27", 0, 0, {}], ["activation_20", 0, 0, {}]]], "shared_object_id": 50, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 40, 40, 8]}, {"class_name": "TensorShape", "items": [null, 40, 40, 8]}]}
»
¡kernel
¢trainable_variables
£regularization_losses
¤	variables
¥	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses"

_tf_keras_layerÿ	{"name": "conv2d_transpose_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 51}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["add_5", 0, 0, {}]]], "shared_object_id": 53, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 8}}, "shared_object_id": 86}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 8]}}
­
¦trainable_variables
§regularization_losses
¨	variables
©	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"name": "activation_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_transpose_13", 0, 0, {}]]], "shared_object_id": 54}
Å
ªkernel
«trainable_variables
¬regularization_losses
­	variables
®	keras_api
ú__call__
+û&call_and_return_all_conditional_losses"£

_tf_keras_layer
{"name": "conv2d_transpose_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 55}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 56}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["activation_28", 0, 0, {}]]], "shared_object_id": 57, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 16}}, "shared_object_id": 87}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 16]}}
­
¯trainable_variables
°regularization_losses
±	variables
²	keras_api
ü__call__
+ý&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"name": "activation_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_transpose_14", 0, 0, {}]]], "shared_object_id": 58}
¦
³trainable_variables
´regularization_losses
µ	variables
¶	keras_api
þ__call__
+ÿ&call_and_return_all_conditional_losses"
_tf_keras_layer÷{"name": "add_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Add", "config": {"name": "add_6", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["activation_29", 0, 0, {}], ["activation_18", 0, 0, {}]]], "shared_object_id": 59, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 40, 40, 32]}, {"class_name": "TensorShape", "items": [null, 40, 40, 32]}]}
½
·kernel
¸trainable_variables
¹regularization_losses
º	variables
»	keras_api
__call__
+&call_and_return_all_conditional_losses"

_tf_keras_layer
{"name": "conv2d_transpose_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["add_6", 0, 0, {}]]], "shared_object_id": 62, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}, "shared_object_id": 88}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 32]}}
­
¼trainable_variables
½regularization_losses
¾	variables
¿	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"name": "activation_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_30", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_transpose_15", 0, 0, {}]]], "shared_object_id": 63}
Å
Àkernel
Átrainable_variables
Âregularization_losses
Ã	variables
Ä	keras_api
__call__
+&call_and_return_all_conditional_losses"£

_tf_keras_layer
{"name": "conv2d_transpose_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["activation_30", 0, 0, {}]]], "shared_object_id": 66, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 89}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 64]}}
­
Åtrainable_variables
Æregularization_losses
Ç	variables
È	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"name": "activation_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_31", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["conv2d_transpose_16", 0, 0, {}]]], "shared_object_id": 67}
¦
Étrainable_variables
Êregularization_losses
Ë	variables
Ì	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer÷{"name": "add_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Add", "config": {"name": "add_7", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["activation_31", 0, 0, {}], ["activation_16", 0, 0, {}]]], "shared_object_id": 68, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 40, 40, 64]}, {"class_name": "TensorShape", "items": [null, 40, 40, 64]}]}
¼
Íkernel
	Îbias
Ïtrainable_variables
Ðregularization_losses
Ñ	variables
Ò	keras_api
__call__
+&call_and_return_all_conditional_losses"

_tf_keras_layerõ	{"name": "conv2d_transpose_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_17", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 69}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 70}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["add_7", 0, 0, {}]]], "shared_object_id": 71, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 90}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 64]}}
Ð
Óbeta_1
Ôbeta_2

Õdecay
Ölearning_rate
	×iter-m6m?mHmQmZm cm¡lm¢um£~m¤	m¥	m¦	¡m§	ªm¨	·m©	Àmª	Ím«	Îm¬-v­6v®?v¯Hv°Qv±Zv²cv³lv´uvµ~v¶	v·	v¸	¡v¹	ªvº	·v»	Àv¼	Ív½	Îv¾"
	optimizer
®
-0
61
?2
H3
Q4
Z5
c6
l7
u8
~9
10
11
¡12
ª13
·14
À15
Í16
Î17"
trackable_list_wrapper
 "
trackable_list_wrapper
®
-0
61
?2
H3
Q4
Z5
c6
l7
u8
~9
10
11
¡12
ª13
·14
À15
Í16
Î17"
trackable_list_wrapper
Ó
Ølayer_metrics
Ùlayers
(trainable_variables
)regularization_losses
Úmetrics
Ûnon_trainable_variables
*	variables
 Ülayer_regularization_losses
¿__call__
À_default_save_signature
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
):'@2conv2d_8/kernel
'
-0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
-0"
trackable_list_wrapper
µ
Ýlayer_metrics
Þlayers
.trainable_variables
/regularization_losses
ßmetrics
ànon_trainable_variables
0	variables
 álayer_regularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
âlayer_metrics
ãlayers
2trainable_variables
3regularization_losses
ämetrics
ånon_trainable_variables
4	variables
 ælayer_regularization_losses
Ä__call__
+Å&call_and_return_all_conditional_losses
'Å"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_9/kernel
'
60"
trackable_list_wrapper
 "
trackable_list_wrapper
'
60"
trackable_list_wrapper
µ
çlayer_metrics
èlayers
7trainable_variables
8regularization_losses
émetrics
ênon_trainable_variables
9	variables
 ëlayer_regularization_losses
Æ__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ìlayer_metrics
ílayers
;trainable_variables
<regularization_losses
îmetrics
ïnon_trainable_variables
=	variables
 ðlayer_regularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
*:(@ 2conv2d_10/kernel
'
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
?0"
trackable_list_wrapper
µ
ñlayer_metrics
òlayers
@trainable_variables
Aregularization_losses
ómetrics
ônon_trainable_variables
B	variables
 õlayer_regularization_losses
Ê__call__
+Ë&call_and_return_all_conditional_losses
'Ë"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ölayer_metrics
÷layers
Dtrainable_variables
Eregularization_losses
ømetrics
ùnon_trainable_variables
F	variables
 úlayer_regularization_losses
Ì__call__
+Í&call_and_return_all_conditional_losses
'Í"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_11/kernel
'
H0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
H0"
trackable_list_wrapper
µ
ûlayer_metrics
ülayers
Itrainable_variables
Jregularization_losses
ýmetrics
þnon_trainable_variables
K	variables
 ÿlayer_regularization_losses
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
layers
Mtrainable_variables
Nregularization_losses
metrics
non_trainable_variables
O	variables
 layer_regularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_12/kernel
'
Q0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
Q0"
trackable_list_wrapper
µ
layer_metrics
layers
Rtrainable_variables
Sregularization_losses
metrics
non_trainable_variables
T	variables
 layer_regularization_losses
Ò__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
layers
Vtrainable_variables
Wregularization_losses
metrics
non_trainable_variables
X	variables
 layer_regularization_losses
Ô__call__
+Õ&call_and_return_all_conditional_losses
'Õ"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_13/kernel
'
Z0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
µ
layer_metrics
layers
[trainable_variables
\regularization_losses
metrics
non_trainable_variables
]	variables
 layer_regularization_losses
Ö__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
layers
_trainable_variables
`regularization_losses
metrics
non_trainable_variables
a	variables
 layer_regularization_losses
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_14/kernel
'
c0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
c0"
trackable_list_wrapper
µ
layer_metrics
layers
dtrainable_variables
eregularization_losses
metrics
non_trainable_variables
f	variables
 layer_regularization_losses
Ú__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
layers
htrainable_variables
iregularization_losses
 metrics
¡non_trainable_variables
j	variables
 ¢layer_regularization_losses
Ü__call__
+Ý&call_and_return_all_conditional_losses
'Ý"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_15/kernel
'
l0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
l0"
trackable_list_wrapper
µ
£layer_metrics
¤layers
mtrainable_variables
nregularization_losses
¥metrics
¦non_trainable_variables
o	variables
 §layer_regularization_losses
Þ__call__
+ß&call_and_return_all_conditional_losses
'ß"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¨layer_metrics
©layers
qtrainable_variables
rregularization_losses
ªmetrics
«non_trainable_variables
s	variables
 ¬layer_regularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
3:12conv2d_transpose_9/kernel
'
u0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
u0"
trackable_list_wrapper
µ
­layer_metrics
®layers
vtrainable_variables
wregularization_losses
¯metrics
°non_trainable_variables
x	variables
 ±layer_regularization_losses
â__call__
+ã&call_and_return_all_conditional_losses
'ã"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
²layer_metrics
³layers
ztrainable_variables
{regularization_losses
´metrics
µnon_trainable_variables
|	variables
 ¶layer_regularization_losses
ä__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses"
_generic_user_object
4:22conv2d_transpose_10/kernel
'
~0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
~0"
trackable_list_wrapper
·
·layer_metrics
¸layers
trainable_variables
regularization_losses
¹metrics
ºnon_trainable_variables
	variables
 »layer_regularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¼layer_metrics
½layers
trainable_variables
regularization_losses
¾metrics
¿non_trainable_variables
	variables
 Àlayer_regularization_losses
è__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Álayer_metrics
Âlayers
trainable_variables
regularization_losses
Ãmetrics
Änon_trainable_variables
	variables
 Ålayer_regularization_losses
ê__call__
+ë&call_and_return_all_conditional_losses
'ë"call_and_return_conditional_losses"
_generic_user_object
4:22conv2d_transpose_11/kernel
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
Ælayer_metrics
Çlayers
trainable_variables
regularization_losses
Èmetrics
Énon_trainable_variables
	variables
 Êlayer_regularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ëlayer_metrics
Ìlayers
trainable_variables
regularization_losses
Ímetrics
Înon_trainable_variables
	variables
 Ïlayer_regularization_losses
î__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses"
_generic_user_object
4:22conv2d_transpose_12/kernel
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
Ðlayer_metrics
Ñlayers
trainable_variables
regularization_losses
Òmetrics
Ónon_trainable_variables
	variables
 Ôlayer_regularization_losses
ð__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Õlayer_metrics
Ölayers
trainable_variables
regularization_losses
×metrics
Ønon_trainable_variables
	variables
 Ùlayer_regularization_losses
ò__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Úlayer_metrics
Ûlayers
trainable_variables
regularization_losses
Ümetrics
Ýnon_trainable_variables
	variables
 Þlayer_regularization_losses
ô__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses"
_generic_user_object
4:22conv2d_transpose_13/kernel
(
¡0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
¡0"
trackable_list_wrapper
¸
ßlayer_metrics
àlayers
¢trainable_variables
£regularization_losses
ámetrics
ânon_trainable_variables
¤	variables
 ãlayer_regularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
älayer_metrics
ålayers
¦trainable_variables
§regularization_losses
æmetrics
çnon_trainable_variables
¨	variables
 èlayer_regularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses"
_generic_user_object
4:2 2conv2d_transpose_14/kernel
(
ª0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
ª0"
trackable_list_wrapper
¸
élayer_metrics
êlayers
«trainable_variables
¬regularization_losses
ëmetrics
ìnon_trainable_variables
­	variables
 ílayer_regularization_losses
ú__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
îlayer_metrics
ïlayers
¯trainable_variables
°regularization_losses
ðmetrics
ñnon_trainable_variables
±	variables
 òlayer_regularization_losses
ü__call__
+ý&call_and_return_all_conditional_losses
'ý"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ólayer_metrics
ôlayers
³trainable_variables
´regularization_losses
õmetrics
önon_trainable_variables
µ	variables
 ÷layer_regularization_losses
þ__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses"
_generic_user_object
4:2@ 2conv2d_transpose_15/kernel
(
·0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
·0"
trackable_list_wrapper
¸
ølayer_metrics
ùlayers
¸trainable_variables
¹regularization_losses
úmetrics
ûnon_trainable_variables
º	variables
 ülayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ýlayer_metrics
þlayers
¼trainable_variables
½regularization_losses
ÿmetrics
non_trainable_variables
¾	variables
 layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
4:2@@2conv2d_transpose_16/kernel
(
À0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
À0"
trackable_list_wrapper
¸
layer_metrics
layers
Átrainable_variables
Âregularization_losses
metrics
non_trainable_variables
Ã	variables
 layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layer_metrics
layers
Åtrainable_variables
Æregularization_losses
metrics
non_trainable_variables
Ç	variables
 layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
layer_metrics
layers
Étrainable_variables
Êregularization_losses
metrics
non_trainable_variables
Ë	variables
 layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
4:2@2conv2d_transpose_17/kernel
&:$2conv2d_transpose_17/bias
0
Í0
Î1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Í0
Î1"
trackable_list_wrapper
¸
layer_metrics
layers
Ïtrainable_variables
Ðregularization_losses
metrics
non_trainable_variables
Ñ	variables
 layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
 "
trackable_dict_wrapper
Æ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ø

total

count
	variables
	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 91}
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
.:,@2Adam/conv2d_8/kernel/m
.:,@@2Adam/conv2d_9/kernel/m
/:-@ 2Adam/conv2d_10/kernel/m
/:- 2Adam/conv2d_11/kernel/m
/:-2Adam/conv2d_12/kernel/m
/:-2Adam/conv2d_13/kernel/m
/:-2Adam/conv2d_14/kernel/m
/:-2Adam/conv2d_15/kernel/m
8:62 Adam/conv2d_transpose_9/kernel/m
9:72!Adam/conv2d_transpose_10/kernel/m
9:72!Adam/conv2d_transpose_11/kernel/m
9:72!Adam/conv2d_transpose_12/kernel/m
9:72!Adam/conv2d_transpose_13/kernel/m
9:7 2!Adam/conv2d_transpose_14/kernel/m
9:7@ 2!Adam/conv2d_transpose_15/kernel/m
9:7@@2!Adam/conv2d_transpose_16/kernel/m
9:7@2!Adam/conv2d_transpose_17/kernel/m
+:)2Adam/conv2d_transpose_17/bias/m
.:,@2Adam/conv2d_8/kernel/v
.:,@@2Adam/conv2d_9/kernel/v
/:-@ 2Adam/conv2d_10/kernel/v
/:- 2Adam/conv2d_11/kernel/v
/:-2Adam/conv2d_12/kernel/v
/:-2Adam/conv2d_13/kernel/v
/:-2Adam/conv2d_14/kernel/v
/:-2Adam/conv2d_15/kernel/v
8:62 Adam/conv2d_transpose_9/kernel/v
9:72!Adam/conv2d_transpose_10/kernel/v
9:72!Adam/conv2d_transpose_11/kernel/v
9:72!Adam/conv2d_transpose_12/kernel/v
9:72!Adam/conv2d_transpose_13/kernel/v
9:7 2!Adam/conv2d_transpose_14/kernel/v
9:7@ 2!Adam/conv2d_transpose_15/kernel/v
9:7@@2!Adam/conv2d_transpose_16/kernel/v
9:7@2!Adam/conv2d_transpose_17/kernel/v
+:)2Adam/conv2d_transpose_17/bias/v
ò2ï
)__inference_model_1_layer_call_fn_1049161
)__inference_model_1_layer_call_fn_1049793
)__inference_model_1_layer_call_fn_1049834
)__inference_model_1_layer_call_fn_1049549À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
é2æ
"__inference__wrapped_model_1048497¿
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª */¢,
*'
input_13ÿÿÿÿÿÿÿÿÿ((
Þ2Û
D__inference_model_1_layer_call_and_return_conditional_losses_1050029
D__inference_model_1_layer_call_and_return_conditional_losses_1050224
D__inference_model_1_layer_call_and_return_conditional_losses_1049626
D__inference_model_1_layer_call_and_return_conditional_losses_1049703À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_conv2d_8_layer_call_fn_1050231¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ï2ì
E__inference_conv2d_8_layer_call_and_return_conditional_losses_1050238¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ù2Ö
/__inference_activation_16_layer_call_fn_1050243¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_16_layer_call_and_return_conditional_losses_1050248¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ô2Ñ
*__inference_conv2d_9_layer_call_fn_1050255¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ï2ì
E__inference_conv2d_9_layer_call_and_return_conditional_losses_1050262¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ù2Ö
/__inference_activation_17_layer_call_fn_1050267¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_17_layer_call_and_return_conditional_losses_1050272¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Õ2Ò
+__inference_conv2d_10_layer_call_fn_1050279¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ð2í
F__inference_conv2d_10_layer_call_and_return_conditional_losses_1050286¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ù2Ö
/__inference_activation_18_layer_call_fn_1050291¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_18_layer_call_and_return_conditional_losses_1050296¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Õ2Ò
+__inference_conv2d_11_layer_call_fn_1050303¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ð2í
F__inference_conv2d_11_layer_call_and_return_conditional_losses_1050310¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ù2Ö
/__inference_activation_19_layer_call_fn_1050315¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_19_layer_call_and_return_conditional_losses_1050320¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Õ2Ò
+__inference_conv2d_12_layer_call_fn_1050327¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ð2í
F__inference_conv2d_12_layer_call_and_return_conditional_losses_1050334¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ù2Ö
/__inference_activation_20_layer_call_fn_1050339¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_20_layer_call_and_return_conditional_losses_1050344¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Õ2Ò
+__inference_conv2d_13_layer_call_fn_1050351¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ð2í
F__inference_conv2d_13_layer_call_and_return_conditional_losses_1050358¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ù2Ö
/__inference_activation_21_layer_call_fn_1050363¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_21_layer_call_and_return_conditional_losses_1050368¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Õ2Ò
+__inference_conv2d_14_layer_call_fn_1050375¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ð2í
F__inference_conv2d_14_layer_call_and_return_conditional_losses_1050382¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ù2Ö
/__inference_activation_22_layer_call_fn_1050387¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_22_layer_call_and_return_conditional_losses_1050392¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Õ2Ò
+__inference_conv2d_15_layer_call_fn_1050399¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ð2í
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1050406¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ù2Ö
/__inference_activation_23_layer_call_fn_1050411¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_23_layer_call_and_return_conditional_losses_1050416¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
4__inference_conv2d_transpose_9_layer_call_fn_1048536×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
®2«
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_1048528×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ù2Ö
/__inference_activation_24_layer_call_fn_1050421¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_24_layer_call_and_return_conditional_losses_1050426¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
5__inference_conv2d_transpose_10_layer_call_fn_1048575×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯2¬
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1048567×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ù2Ö
/__inference_activation_25_layer_call_fn_1050431¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_25_layer_call_and_return_conditional_losses_1050436¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ñ2Î
'__inference_add_4_layer_call_fn_1050442¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ì2é
B__inference_add_4_layer_call_and_return_conditional_losses_1050448¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
5__inference_conv2d_transpose_11_layer_call_fn_1048614×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯2¬
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1048606×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ù2Ö
/__inference_activation_26_layer_call_fn_1050453¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_26_layer_call_and_return_conditional_losses_1050458¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
5__inference_conv2d_transpose_12_layer_call_fn_1048653×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯2¬
P__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1048645×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ù2Ö
/__inference_activation_27_layer_call_fn_1050463¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_27_layer_call_and_return_conditional_losses_1050468¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ñ2Î
'__inference_add_5_layer_call_fn_1050474¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ì2é
B__inference_add_5_layer_call_and_return_conditional_losses_1050480¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
5__inference_conv2d_transpose_13_layer_call_fn_1048692×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯2¬
P__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1048684×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ù2Ö
/__inference_activation_28_layer_call_fn_1050485¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_28_layer_call_and_return_conditional_losses_1050490¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
5__inference_conv2d_transpose_14_layer_call_fn_1048731×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¯2¬
P__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1048723×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ù2Ö
/__inference_activation_29_layer_call_fn_1050495¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_29_layer_call_and_return_conditional_losses_1050500¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ñ2Î
'__inference_add_6_layer_call_fn_1050506¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ì2é
B__inference_add_6_layer_call_and_return_conditional_losses_1050512¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
5__inference_conv2d_transpose_15_layer_call_fn_1048770×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
¯2¬
P__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_1048762×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
Ù2Ö
/__inference_activation_30_layer_call_fn_1050517¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_30_layer_call_and_return_conditional_losses_1050522¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
5__inference_conv2d_transpose_16_layer_call_fn_1048809×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
¯2¬
P__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_1048801×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Ù2Ö
/__inference_activation_31_layer_call_fn_1050527¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ô2ñ
J__inference_activation_31_layer_call_and_return_conditional_losses_1050532¢
²
FullArgSpec
args
jself
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
annotationsª *
 
Ñ2Î
'__inference_add_7_layer_call_fn_1050538¢
²
FullArgSpec
args
jself
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
annotationsª *
 
ì2é
B__inference_add_7_layer_call_and_return_conditional_losses_1050544¢
²
FullArgSpec
args
jself
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
annotationsª *
 
2
5__inference_conv2d_transpose_17_layer_call_fn_1048853×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
¯2¬
P__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_1048843×
²
FullArgSpec
args
jself
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ÍBÊ
%__inference_signature_wrapper_1049752input_13"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 Ñ
"__inference__wrapped_model_1048497ª-6?HQZclu~¡ª·ÀÍÎ9¢6
/¢,
*'
input_13ÿÿÿÿÿÿÿÿÿ((
ª "QªN
L
conv2d_transpose_1752
conv2d_transpose_17ÿÿÿÿÿÿÿÿÿ((¶
J__inference_activation_16_layer_call_and_return_conditional_losses_1050248h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((@
 
/__inference_activation_16_layer_call_fn_1050243[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª " ÿÿÿÿÿÿÿÿÿ((@¶
J__inference_activation_17_layer_call_and_return_conditional_losses_1050272h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((@
 
/__inference_activation_17_layer_call_fn_1050267[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª " ÿÿÿÿÿÿÿÿÿ((@¶
J__inference_activation_18_layer_call_and_return_conditional_losses_1050296h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ(( 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ(( 
 
/__inference_activation_18_layer_call_fn_1050291[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ(( 
ª " ÿÿÿÿÿÿÿÿÿ(( ¶
J__inference_activation_19_layer_call_and_return_conditional_losses_1050320h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 
/__inference_activation_19_layer_call_fn_1050315[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((¶
J__inference_activation_20_layer_call_and_return_conditional_losses_1050344h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 
/__inference_activation_20_layer_call_fn_1050339[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((¶
J__inference_activation_21_layer_call_and_return_conditional_losses_1050368h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 
/__inference_activation_21_layer_call_fn_1050363[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((¶
J__inference_activation_22_layer_call_and_return_conditional_losses_1050392h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 
/__inference_activation_22_layer_call_fn_1050387[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((¶
J__inference_activation_23_layer_call_and_return_conditional_losses_1050416h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
/__inference_activation_23_layer_call_fn_1050411[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿÛ
J__inference_activation_24_layer_call_and_return_conditional_losses_1050426I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ²
/__inference_activation_24_layer_call_fn_1050421I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ
J__inference_activation_25_layer_call_and_return_conditional_losses_1050436I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ²
/__inference_activation_25_layer_call_fn_1050431I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ
J__inference_activation_26_layer_call_and_return_conditional_losses_1050458I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ²
/__inference_activation_26_layer_call_fn_1050453I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ
J__inference_activation_27_layer_call_and_return_conditional_losses_1050468I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ²
/__inference_activation_27_layer_call_fn_1050463I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ
J__inference_activation_28_layer_call_and_return_conditional_losses_1050490I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ²
/__inference_activation_28_layer_call_fn_1050485I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ
J__inference_activation_29_layer_call_and_return_conditional_losses_1050500I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ²
/__inference_activation_29_layer_call_fn_1050495I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Û
J__inference_activation_30_layer_call_and_return_conditional_losses_1050522I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ²
/__inference_activation_30_layer_call_fn_1050517I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Û
J__inference_activation_31_layer_call_and_return_conditional_losses_1050532I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ²
/__inference_activation_31_layer_call_fn_1050527I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ô
B__inference_add_4_layer_call_and_return_conditional_losses_1050448­|¢y
r¢o
mj
<9
inputs/0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*'
inputs/1ÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 Ì
'__inference_add_4_layer_call_fn_1050442 |¢y
r¢o
mj
<9
inputs/0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*'
inputs/1ÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((ô
B__inference_add_5_layer_call_and_return_conditional_losses_1050480­|¢y
r¢o
mj
<9
inputs/0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*'
inputs/1ÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 Ì
'__inference_add_5_layer_call_fn_1050474 |¢y
r¢o
mj
<9
inputs/0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*'
inputs/1ÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((ô
B__inference_add_6_layer_call_and_return_conditional_losses_1050512­|¢y
r¢o
mj
<9
inputs/0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
*'
inputs/1ÿÿÿÿÿÿÿÿÿ(( 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ(( 
 Ì
'__inference_add_6_layer_call_fn_1050506 |¢y
r¢o
mj
<9
inputs/0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
*'
inputs/1ÿÿÿÿÿÿÿÿÿ(( 
ª " ÿÿÿÿÿÿÿÿÿ(( ô
B__inference_add_7_layer_call_and_return_conditional_losses_1050544­|¢y
r¢o
mj
<9
inputs/0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
*'
inputs/1ÿÿÿÿÿÿÿÿÿ((@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((@
 Ì
'__inference_add_7_layer_call_fn_1050538 |¢y
r¢o
mj
<9
inputs/0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
*'
inputs/1ÿÿÿÿÿÿÿÿÿ((@
ª " ÿÿÿÿÿÿÿÿÿ((@µ
F__inference_conv2d_10_layer_call_and_return_conditional_losses_1050286k?7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ(( 
 
+__inference_conv2d_10_layer_call_fn_1050279^?7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª " ÿÿÿÿÿÿÿÿÿ(( µ
F__inference_conv2d_11_layer_call_and_return_conditional_losses_1050310kH7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ(( 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 
+__inference_conv2d_11_layer_call_fn_1050303^H7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ(( 
ª " ÿÿÿÿÿÿÿÿÿ((µ
F__inference_conv2d_12_layer_call_and_return_conditional_losses_1050334kQ7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 
+__inference_conv2d_12_layer_call_fn_1050327^Q7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((µ
F__inference_conv2d_13_layer_call_and_return_conditional_losses_1050358kZ7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 
+__inference_conv2d_13_layer_call_fn_1050351^Z7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((µ
F__inference_conv2d_14_layer_call_and_return_conditional_losses_1050382kc7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 
+__inference_conv2d_14_layer_call_fn_1050375^c7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((µ
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1050406kl7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_conv2d_15_layer_call_fn_1050399^l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ´
E__inference_conv2d_8_layer_call_and_return_conditional_losses_1050238k-7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((@
 
*__inference_conv2d_8_layer_call_fn_1050231^-7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((
ª " ÿÿÿÿÿÿÿÿÿ((@´
E__inference_conv2d_9_layer_call_and_return_conditional_losses_1050262k67¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((@
 
*__inference_conv2d_9_layer_call_fn_1050255^67¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª " ÿÿÿÿÿÿÿÿÿ((@ä
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_1048567~I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¼
5__inference_conv2d_transpose_10_layer_call_fn_1048575~I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿå
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_1048606I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ½
5__inference_conv2d_transpose_11_layer_call_fn_1048614I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿå
P__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_1048645I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ½
5__inference_conv2d_transpose_12_layer_call_fn_1048653I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿå
P__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_1048684¡I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ½
5__inference_conv2d_transpose_13_layer_call_fn_1048692¡I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿå
P__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_1048723ªI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ½
5__inference_conv2d_transpose_14_layer_call_fn_1048731ªI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ å
P__inference_conv2d_transpose_15_layer_call_and_return_conditional_losses_1048762·I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ½
5__inference_conv2d_transpose_15_layer_call_fn_1048770·I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@å
P__inference_conv2d_transpose_16_layer_call_and_return_conditional_losses_1048801ÀI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ½
5__inference_conv2d_transpose_16_layer_call_fn_1048809ÀI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ç
P__inference_conv2d_transpose_17_layer_call_and_return_conditional_losses_1048843ÍÎI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¿
5__inference_conv2d_transpose_17_layer_call_fn_1048853ÍÎI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿã
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_1048528uI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 »
4__inference_conv2d_transpose_9_layer_call_fn_1048536uI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿé
D__inference_model_1_layer_call_and_return_conditional_losses_1049626 -6?HQZclu~¡ª·ÀÍÎA¢>
7¢4
*'
input_13ÿÿÿÿÿÿÿÿÿ((
p 

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 é
D__inference_model_1_layer_call_and_return_conditional_losses_1049703 -6?HQZclu~¡ª·ÀÍÎA¢>
7¢4
*'
input_13ÿÿÿÿÿÿÿÿÿ((
p

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Õ
D__inference_model_1_layer_call_and_return_conditional_losses_1050029-6?HQZclu~¡ª·ÀÍÎ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ((
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 Õ
D__inference_model_1_layer_call_and_return_conditional_losses_1050224-6?HQZclu~¡ª·ÀÍÎ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ((
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((
 Á
)__inference_model_1_layer_call_fn_1049161-6?HQZclu~¡ª·ÀÍÎA¢>
7¢4
*'
input_13ÿÿÿÿÿÿÿÿÿ((
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÁ
)__inference_model_1_layer_call_fn_1049549-6?HQZclu~¡ª·ÀÍÎA¢>
7¢4
*'
input_13ÿÿÿÿÿÿÿÿÿ((
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
)__inference_model_1_layer_call_fn_1049793-6?HQZclu~¡ª·ÀÍÎ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ((
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
)__inference_model_1_layer_call_fn_1049834-6?HQZclu~¡ª·ÀÍÎ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ((
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà
%__inference_signature_wrapper_1049752¶-6?HQZclu~¡ª·ÀÍÎE¢B
¢ 
;ª8
6
input_13*'
input_13ÿÿÿÿÿÿÿÿÿ(("QªN
L
conv2d_transpose_1752
conv2d_transpose_17ÿÿÿÿÿÿÿÿÿ((