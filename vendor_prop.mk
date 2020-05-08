# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.force_voice_config=wide \
    audio_hal.disable_two_mic=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/efs/bluetooth/bt_addr

# Bluetooth workaround:
# The new CAF code defaults to MCT HAL
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=rome

# Dalvik/Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.isa.arm64.variant=generic \
    dalvik.vm.isa.arm64.features=default \
    dalvik.vm.isa.arm.variant=cortex-a15 \
    dalvik.vm.isa.arm.features=default

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.skip_dma_types=0,2 \
    ro.opengles.version=196610 \
    debug.hwc.force_gpu=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0

# FRP Partition
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/platform/13540000.dwmmc0/by-name/PERSISTENT

# Nfc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port="I2C" \
    ro.nfc.sec_hal=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.sib16_support=1 \
    rild.libargs=-d /dev/umts_ipc0 \
    rild.libpath=/vendor/lib64/libsec-ril.so \
    rild.libpath2=/vendor/lib64/libsec-ril-dsds.so \
    ro.telephony.default_network=9 \
    ro.ril.gprsclass=10 \
    ro.ril.hsxpa=1 \
    ro.ril.telephony.mqanelements=6 \
    ro.telephony.mms_data_profile=5 \
    telephony.lteOnCdmaDevice=0 \
    vendor.sec.rild.libpath=/vendor/lib64/libsec-ril.so \
    vendor.sec.rild.libpath2=/vendor/lib64/libsec-ril-dsds.so

# SDcardfs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=false

#Treble
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=true

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# boot device
#PRODUCT_PROPERTY_OVERRIDES += \
    #ro.boot.bootdevice=13540000.dwmmc0
