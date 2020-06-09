# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

FUSION_BASE_VERSION := 1.0
FUSION_CODENAME := Neon

CUSTOM_PLATFORM_VERSION := 10.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := Fusion-OS-$(FUSION_BASE_VERSION)-$(FUSION_CODENAME)_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := ten

CUSTOM_PROPERTIES := \
    org.fusion.version=$(CUSTOM_VERSION_PROP) \
    org.fusion.version=$(CUSTOM_VERSION) \
    org.fusion.build_version=$(FUSION_BASE_VERSION) \
    org.fusion.version.display=$(CUSTOM_VERSION) \
    org.fusion.build_date=$(CUSTOM_BUILD_DATE) \
    org.fusion.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.fusion.build_type=$(CUSTOM_BUILD_TYPE)


