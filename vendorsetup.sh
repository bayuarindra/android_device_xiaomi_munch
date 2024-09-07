rm -rf hardware/qcom-caf/sm8250/display
git clone https://github.com/bayuarindra/android_hardware_qcom-caf_sm8250_display hardware/qcom-caf/sm8250/display

rm -rf frameworks/native
git clone https://github.com/bayuarindra/android_frameworks_native frameworks/native

if [ ! -d "prebuilts/clang/host/linux-x86/clang-neutron" ]; then
    cd prebuilts/clang/host/linux-x86
    mkdir clang-neutron
    cd clang-neutron
    curl -LO "https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman"
    chmod +x antman
    ./antman -S=05012024
	./antman --patch=glibc
    cd ../../../../..
fi

sed -i 's/android:minSdkVersion="19"/android:minSdkVersion="21"/' prebuilts/sdk/current/androidx/m2repository/androidx/preference/preference/1.3.0-alpha01/manifest/AndroidManifest.xml