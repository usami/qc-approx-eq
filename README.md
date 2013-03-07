# approxeq
approxeq is a Matlab function that computes whether two quantum circuits are
approximately equivalent or not.


## Usage
This function has the following syntax:

	approxeq(epsilon, u11, u12, u21, u22)

To use this function in the Matlab prompt, simply run Matlab in the same
directory, and then call the function like this.

	>> approxeq(0.0001, 1, 0, 0, 1)

	ans =

	YES


## Example
Here are some test runs for U = X, Y, Z, H, S or T. In each test, epsilon is
set to 0.0001.

#### X = [0 1; 1 0]

	>> approxeq(0.0001, 0, 1, 1, 0)

	ans =

	YES

#### Y = [0 -i; i 0]

	>> approxeq(0.0001, 0, -i, i, 0)

	ans =

	YES

#### Z = [1 0; 0 -1]

	>> approxeq(0.0001, 1, 0, 0, -1)

	ans =

	YES

#### H = [0.7071 0.7071; 0.7071 -0.7071]

	>> approxeq(0.0001, 0.7071, 0.7071, 0.7071, -0.7071)

	ans =

	YES

#### S = [1 0; 0 i]

	>> approxeq(0.0001, 1, 0, 0, i)

	ans =

	NO

#### T = [1 0; 0 0.7071+0.7071i]

	>> approxeq(0.0001, 1., 0., 0., 0.7071+0.7071i)

	ans =

	NO

### Results for another epsilon

| epsilon |  X  |  Y  |  Z  |  H  |  S  |  T  |
| ------- | --- | --- | --- | --- | --- | --- |
| 0.0001  | YES | YES | YES | YES | NO  | NO  |
| 0.00001 | YES | YES | YES | NO  | NO  | NO  |
