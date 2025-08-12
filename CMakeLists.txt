cmake_minimum_required(VERSION 3.16)

project(LibrairiesBasic VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Felgo REQUIRED)

# Project identifier and version
# More information: https://felgo.com/doc/felgo-publishing/#project-configuration
set(PRODUCT_IDENTIFIER "com.yourcompany.wizardEVAP.LibrairiesBasic")
set(PRODUCT_VERSION_NAME "1.0.0")
set(PRODUCT_VERSION_CODE 1)

# Set either "test" or "publish" stage:
set(PRODUCT_STAGE "test")

# Optionally set a license key that is used instead of the license key from
# main.qml file (App::licenseKey for your app or GameWindow::licenseKey for your game)
# Only used for local builds and Felgo Cloud Builds (https://felgo.com/cloud-builds)
# Not used if using Felgo Developer App
set(PRODUCT_LICENSE_KEY "5C6D917592593907DAE23DBD3D5BDD8A6BCB6D21F8620596962C5FEAF97C70BEBBE25BBBFD92906E8F9C21F5C899BBC2A0D50968974431480A4D17D7BBA06C9B31392B68D3F09A82460C1072FC2C0929AE464A8F04841696D2D59BE302CA4743D7AF3117B77470ED9700787B0BBFD80C0648D3952BC703BA11E36773D2C79F6CB8487C6315387DCE4D7C9DBFB4462F3E86ED19CF8672714B64961EBB2D6197F07FF68BCD6F70127C8A2C06590AF92779B54B2CA22153455ADD7CC2E1FF6DC1182580DF21A2720E7CDD40881E7A164FB68593B922D95CBE6675DC2B560D9F8515C535AD6595384A257A5100841D5B8673243E2D766A17338E7006ED2F964800B460F5D478EA30FB24845AB7647223509AB1BEE56A732CB06D7FAF05566BC3D2DBABFCC8415A01CEBC0D49C4CE21321EA0286390E8A0BC20E32FCC1CC09072B7F02AF309FCF67F84B7D1916A480F5D83FC")

set(FELGO_PLUGINS
)

# Find all QML/JS files for the QML compiler:
file(GLOB_RECURSE QmlFiles RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} qml/*.qml qml/*.js)

# Find all non-QML/JS files in the qml and assets folder to add as resources:
file(GLOB_RECURSE AssetsFiles RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} assets/* qml/*)
list(REMOVE_ITEM AssetsFiles ${QmlFiles})

# qt_add_executable(appLibrairiesBasic
#     main.cpp
#     ${QmlFiles}
#     ${AssetsFiles}
# )

# # Add a .ts file for every language your app supports:
 set(TsFiles i18n/de_DE.ts i18n/de_AT.ts i18n/en_EN.ts i18n/cn_CN.ts i18n/fr_FR.ts)

qt_add_executable(appLibrairiesBasic
    main.cpp
    ${QmlFiles}
    ${AssetsFiles}
    ${TsFiles} # also show the .ts files in Qt Creator
)

# # Register the .ts files and create Cmake lupdate/lrelease targets:
find_package(Qt6 COMPONENTS Linguist REQUIRED)
qt_add_translations(appLibrairiesBasic TS_FILES ${TsFiles})

felgo_configure_executable(appLibrairiesBasic)

# Deploy resources to build folder/package directly
# comment for publishing
deploy_resources("${QmlFiles};${AssetsFiles}")

# Add QML files and resources to QML module to included them via QRC automatically:
qt_add_qml_module(appLibrairiesBasic
    URI LibrairiesBasic
    VERSION 1.0
# uncomment for publishing:
    QML_FILES ${QmlFiles}
    # RESOURCES ${AssetsFiles}
    NO_RESOURCE_TARGET_PATH
    RESOURCES .gitignore
    QML_FILES qml/basic_librairies/BasicVideo/v1/BasicVideoJumpManager.qml
)



# NOTE: for PUBLISHING, perform the following steps:
# 1. comment the deploy_resources line above, to avoid shipping your qml files with the application (instead they get compiled to the app binary)
# 2. uncomment the QML_FILES and RESOURCES above; this compiles your qml files and js files to the app binary and protects your source code
# 3. change the setMainQmlFile() call in main.cpp to the one starting with "qrc:/" - this loads the qml files from the resources
# for more details see the "Deployment Guides" in the Felgo Documentation

# during development, use the deploy_resources because you then get shorter compilation times (the qml files do not need to be compiled to the binary but are just copied)
# also, for quickest deployment on Desktop disable the "Shadow Build" option in Projects/Builds - you can then select "Run Without Deployment" from the Build menu in Qt Creator if you only changed QML files; this speeds up application start, because your app is not copied & re-compiled but just re-interpreted

target_compile_definitions(appLibrairiesBasic
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)

target_link_libraries(appLibrairiesBasic PRIVATE Felgo)

# uncomment this line to add Felgo Hot Reload and use hot reloading with your custom C++ code
# for the remaining steps see here: https://felgo.com/custom-code-reload-app/
# find_package(FelgoHotReload REQUIRED)
# target_link_libraries(appLibrairiesBasic PRIVATE FelgoHotReload)
