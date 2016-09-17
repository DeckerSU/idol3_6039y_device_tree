Idol 3 6039Y Device Tree for TWRP
---------------------------------

Succefully build on OmniROM sources tree.

Notes for myself
----------------

Fixing bug in subpartitions backup/restore:

https://github.com/omnirom/android_bootable_recovery/commit/724c5148a5bf341479bf943b0c64ce8d40814148
http://forum.xda-developers.com/showpost.php?p=68737171&postcount=2276

Build the android-7.0 branch in a 6.0 tree. Just add this to .repo/local_mainifests/twrp.xml:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <remove-project path="bootable/recovery" name="android_bootable_recovery" remote="omnirom" revision="android-6.0" groups="pdk-cw-fs"/>
  <project path="bootable/recovery" name="android_bootable_recovery" remote="omnirom" revision="android-7.0" groups="pdk-cw-fs"/>
</manifest>
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <remove-project name="android_bootable_recovery" />
  <project path="bootable/recovery" name="android_bootable_recovery" remote="omnirom" revision="android-7.0" groups="pdk-cw-fs" />
</manifest>
```

repo sync --force-sync -f
repo sync --force-sync
