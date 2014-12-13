## Steps to reproduce

```
#get framework
adb pull /system/framework/framework-res.apk

# install framework
apktool if framework-res.apk

# decompile
adb pull /system/app/Torch.apk Torch.orig.apk
apktool d Torch.orig.apk apk

# modify - apply changes to res/ and smali/
# repack

apktool b out Torch.apk

# generate key (only once)
keytool -genkey -v -keystore my.keystore -alias myandroidalias -keyalg RSA -keysize 2048 -validity 20000

# sign the new apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my.keystore Torch.apk myandroidalias

#install
adb install -r Torch.apk
```
