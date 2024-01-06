## Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    vendor/gapps/common

PRODUCT_COPY_FILES += \
    vendor/gapps/common/proprietary/product/etc/default-permissions/default-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default-permissions-google.xml \
    vendor/gapps/common/proprietary/product/etc/default-permissions/default-permissions-mtg.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default-permissions-mtg.xml \
    vendor/gapps/common/proprietary/product/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.dialer.support.xml \
    vendor/gapps/common/proprietary/product/etc/permissions/privapp-permissions-google-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-product.xml \
    vendor/gapps/common/proprietary/product/etc/security/fsverity/gms_fsverity_cert.der:$(TARGET_COPY_OUT_PRODUCT)/etc/security/fsverity/gms_fsverity_cert.der \
    vendor/gapps/common/proprietary/product/etc/security/fsverity/play_store_fsi_cert.der:$(TARGET_COPY_OUT_PRODUCT)/etc/security/fsverity/play_store_fsi_cert.der \
    vendor/gapps/common/proprietary/product/etc/sysconfig/d2d_cable_migration_feature.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/d2d_cable_migration_feature.xml \
    vendor/gapps/common/proprietary/product/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
    vendor/gapps/common/proprietary/product/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_build.xml \
    vendor/gapps/common/proprietary/product/etc/sysconfig/google-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-allowlist.xml \
    vendor/gapps/common/proprietary/product/etc/sysconfig/nga.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/nga.xml \
    vendor/gapps/common/proprietary/system_ext/etc/permissions/privapp-permissions-google-system-ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-google-system-ext.xml

# Product Apps
PRODUCT_PACKAGES += \
    AndroidPlatformServices \
	CalculatorGoogle \
	CalendarGoogle \
	GoogleCalendarSyncAdapter \
	GoogleContactsSyncAdapter \
	LatinImeGoogle \
	MarkupGoogle \
	MlkitBarcodeUIPrebuilt \
	NgaResources \
	PrebuiltDeskClockGoogle \
	PrebuiltExchange3Google \
	SpeechServicesByGoogle \
	SoundPicker \
	talkback \
	VisionBarcodePrebuilt

# Product priv-apps
PRODUCT_PACKAGES += \
	AndroidAutoStub \
    PrebuiltGmsCoreSc \
    PrebuiltGmsCoreSc_AdsDynamite \
    PrebuiltGmsCoreSc_CronetDynamite \
    PrebuiltGmsCoreSc_DynamiteLoader \
    PrebuiltGmsCoreSc_DynamiteModulesA \
    PrebuiltGmsCoreSc_DynamiteModulesC \
    PrebuiltGmsCoreSc_GoogleCertificates \
    PrebuiltGmsCoreSc_MapsDynamite \
    PrebuiltGmsCoreSc_MeasurementDynamite \
	GooglePartnerSetup \
	GoogleRestore \
	Phonesky \
	Velvet \
	WellbeingPrebuilt    

# System apps
PRODUCT_PACKAGES += \
	GooglePrintRecommendationService

# System-ext priv-apps
PRODUCT_PACKAGES += \
	GoogleFeedback \
	GoogleServicesFramework \
	SetupWizard

# Conditionally build Google Contacts Dialer or Message
ifeq ($(BUILD_GOOGLE_CONTACTS), true)
PRODUCT_PACKAGES += \
    GoogleContacts
endif
	
ifeq ($(BUILD_GOOGLE_DIALER), true)
PRODUCT_PACKAGES += \
    GoogleDialer
endif
	
ifeq ($(BUILD_GOOGLE_MESSAGE), true)
PRODUCT_PACKAGES += \
    PrebuiltBugle
endif

# Libraries
PRODUCT_PACKAGES += \
    com.google.android.dialer.support

PRODUCT_SOONG_NAMESPACES += vendor/gapps/overlay
PRODUCT_PACKAGES += GmsOverlay GmsSettingsProviderOverlay
