./getcode_git.sh g3_obmc.git AES-210E d61fd05bb5

./getcode_git.sh g3_private_intel_meta-restricted.git AES-210E/meta-openbmc-mods/meta-restricted 9056ded5c5
./getcode_git.sh g3_private_intel_meta-egs.git AES-210E/meta-openbmc-mods/meta-egs cbddc060db

./getcode_git.sh g3_isc-src_common.git AES-210E/isc-src d84c285a4e
./getcode_git.sh g3_isc-src_platform_intel.git AES-210E/isc-src/platform_intel b9749c9b1d
./getcode_git.sh g3_isc-src_chipset_common.git AES-210E/isc-src/chipset/CommonChipset 52109e24b3
./getcode_git.sh g3_isc-src_chipset_ast2600.git AES-210E/isc-src/chipset/AST2600 1125ecc9f0

./getcode_git.sh g3_common-insyde.git AES-210E/meta-insyde 0c39c4d871
./getcode_git.sh g3_common-ast2600.git AES-210E/meta-insyde/meta-aspeed/meta-ast2600 f106c1dd36
./getcode_git.sh g3_common.git AES-210E/meta-insyde/meta-common 44674068db
./getcode_git.sh g3_DevTool.git AES-210E/meta-insyde/tools 138eb6d0c3
./getcode_git.sh g3_common-intel.git AES-210E/meta-insyde/meta-intel 45114bf79f
./getcode_git.sh g3_archercity.git AES-210E/meta-insyde/meta-intel/meta-archercity adaaabe8d5
./getcode_git.sh g3_asd.git AES-210E/isc-src/asd d211ff1302
./getcode_git.sh g3_advantech_Intel.git AES-210E/meta-advantech AES-210E

cd AES-210E
ln -s $(pwd)/isc-src/chipset/AST2600/ $(pwd)/isc-src/chipset/AST2605
ln -s $(pwd)/isc-src/chipset/CommonChipset/ipmid/Core/Platform/AST2600/ $(pwd)/isc-src/chipset/CommonChipset/ipmid/Core/Platform/AST2605
ln -s $(pwd)/isc-src/ipmid/Common/Platform/AST2600/ $(pwd)/isc-src/ipmid/Common/Platform/AST2605
ln -s $(pwd)/isc-src/GEN_DBGLOG/AST2600/ $(pwd)/isc-src/GEN_DBGLOG/AST2605
ln -s $(pwd)/isc-src/RAID/AST2600/ $(pwd)/isc-src/RAID/AST2605
ln -s $(pwd)/isc-src/vm_kvm/IKVM/prebuilt/AST2600/ $(pwd)/isc-src/vm_kvm/IKVM/prebuilt/AST2605
ln -s $(pwd)/isc-src/scripts/AST2600/ $(pwd)/isc-src/scripts/AST2605
mkdir $(pwd)/isc-src/platform
ln -s $(pwd)/isc-src/platform_intel/ArcherCity/ $(pwd)/isc-src/platform/ArcherCity

cp -rf ./meta-advantech/overwrite/* .
