# Intel's libhoudini for Intel x86 CPU, pulled from leaked Aluminium OS image for brya Chromebooks

`houdini64` version = 17.0.0_z.39738.g

Android image fingerprint : Android/generic_system/generic:17/CL2B.260324.001/15082641:user/release-keys

## How to include it in your Android-x86 build :
* To include it, cherry-pick or make this commit as a reference :
https://github.com/supremegamers/device_generic_common/commit/e4f3b23aa2042a27607e31d15367978e0fae29a2

Additionally, remove all the old nativebridge scripts/lib that was in Android-x86 in case you can't compile
https://github.com/supremegamers/device_generic_common/commit/553b43cff47bb72dd712589a6744be8f173c9d8e
https://github.com/supremegamers/device_generic_common/commit/ae4cd3264d3e625d339e7cf9ae42821b51d55ade

