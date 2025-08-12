import QtQuick
import Felgo
import "../../abstract"
import "../../basic_librairies/BasicDebug/v1"
import "../../basic_librairies/Utils/v1"

SceneAbstract {


    /**
        Step 1:
            dans le CMakeLists.txt, ligne 35 a 39, remplacer ceci
                qt_add_executable(???appTranslation???
                    main.cpp
                    ${QmlFiles}
                    ${AssetsFiles}
                )

            Par cela:
                # Add a .ts file for every language your app supports:
                 set(TsFiles i18n/de_DE.ts i18n/de_AT.ts i18n/en_EN.ts i18n/cn_CN.ts i18n/fr_FR.ts)

                 qt_add_executable(???appTranslation???
                     main.cpp
                     ${QmlFiles}
                     ${AssetsFiles}
                     ${TsFiles} # also show the .ts files in Qt Creator
                 )

                 # Register the .ts files and create Cmake lupdate/lrelease targets:
                 find_package(Qt6 COMPONENTS Linguist REQUIRED)
                 qt_add_translations(???appTranslation??? TS_FILES ${TsFiles})

            !! Attention !! -> Il faut mettre le nom de l'application a la place de '???appTranslation???'
            le nom peut se trouver dans 'felgo_configure_executable(appLibrairiesBasic)'

        Step 2:
            !! Attention !! -> les lignes 'QML_FILES ${QmlFiles}' et 'NO_RESOURCE_TARGET_PATH' doivent etre decommentees
            Build project (considerer builder le projet en non-webAssembly)

        Step 3:
            >Tools/External/Linguist/Update Translation

        Step 4:
            lancer QtLinguist qui se trouve dans 'C:\Felgo\Felgo\mingw_64\bin\linguist.exe'

        Step 5:
            ecrire les traductions
            valider avec les traductions avec le ticker vert

        Step 6:
            dans QtLinguist: >Fichier>Release
            
        Step 7: (option 1)
            dans le Component.onCompleted du GameWindow, ecrire: 'translation.useSystemLanguage = false'
                Component.onCompleted: {
                    //settings.language = "en_EN" // for testing purpose only
                    translation.useSystemLanguage = false // set it to true to start always with the currently active operating system language - set it to false to allow change language with settings.language
                    var currLang = Qt.locale().name // fonction de Qt qui permet de renvoyer la langue par defaut
                    currLang = forceToAvailableLanguages(currLang)
                }
                
        Step 8: (option 2)
            forcer la langue:
                settings.language = "en_EN"
            

      */


    BasicDebugWindow {
        /*
          Tous les textes doivent mis avec 'qsTr(..)'
          */
        text: qsTr("Bonjour, ce texte demande a etre traduit")
    }



    BasicNum {
        id: mBasicNum
    }



}
