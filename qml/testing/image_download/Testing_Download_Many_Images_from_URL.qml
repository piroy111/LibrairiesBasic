import QtQuick
import Felgo
import "../../abstract"
import "../../basic_librairies/BasicImageSource/v4"
import "../../basic_librairies/Utils/v1"
import "../../basic_librairies/BasicReflection/v3"
import "../../basic_librairies/BasicGlobalFollower/v2"

SceneAbstract {


    /*
        This project tests the download of BasicImageSource in a massive manner
        It will show all the images on one page. One image appear every 500 ms
        Images are downloaded by BasicImageSourceManager in advance, or on the spot when they are visible

        This project contains all the Bundles of Jomere
        The main page should cal all the assets
        the goal is to see how long it takes to launch

      */

    /////////////////////////////////////////////////////////////
    //      OTHER LIBRAIRIES NEEDED
    /////////////////////////////////////////////////////////////
    BasicDisplay {
        id: mBasicDisplay
    }
    BasicNum {
        id: mBasicNum
    }
    BasicConst {
        id: mBasicConst
    }
    BasicReflection {
        id: mBasicReflection
    }
    BasicGlobalFollower {
        id: mBasicGlobalFollower
    }
    BasicImageSourceManager {
        id: mBasicImageSourceManager
    }
    BasicSource {
        id: mBasicSource
    }
    BIScBasicImageSourceConstants {
        id: cBIS
    }


    ///////////////////////////////////////////////////////////
    ////        TUTO
    ///////////////////////////////////////////////////////////


    Component.onCompleted: {
        mBasicSource.mMODE_SOURCE = "WebAssmebly"
        /*
          Make images visible every 500 ms
          */
        mThisTimer_Show_Images.start();
    }

    property int mFrequencyShow: 500

    Timer {
        id: mThisTimer_Show_Images

        interval: mFrequencyShow

        repeat: true

        onTriggered: {
            let lListMyImage = mBasicImageSourceManager.getmListBasicImageSource()
            for (let lIdx = 0; lIdx < lListMyImage.length; lIdx++) {
                let lMyImage = lListMyImage[lIdx];
                if (!lMyImage.visible) {
                    ///////////////////////////////////////////////
                    console.log("Testing_Download_Many_Images_from_URL.qml >> Download image= " + lMyImage.vStringStatus())
                    ///////////////////////////////////////////////////
                    lMyImage.visible = true;
                    break
                }
            }
            /*
              Infinite start
              */
            mBackground.switchColor()
            mThisTimer_Show_Images.start();
        }
    }

    Rectangle {
        id: mBackground

        anchors.fill: parent

        color: "pink"

        property bool mIdxColor
        function switchColor() {
            if (mIdxColor) {
                color = "cyan"
            } else {
                color = "lightyellow"
            }
            mIdxColor = !mIdxColor
        }
    }

    MouseArea {
        anchors.fill: parent
        z: 1
        onClicked: {
            console.log("Clicked")
            mBackground.switchColor()
        }
    }

    /*
      Load Image
      */
    MyImage {
        mSource: "Images/InteractViewSimple/Assistant desk closeup.jpg"
    }

    MyImage {
        id: mThisMyImage

        mSource: "Images/InteractCharacter/Ada/Ada_001.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Ada/Ada_002.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Ada/Ada_003.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Ada/Ada_Sex_001.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Ada/Ada_Sex_002.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Angel/Angel_001.jpg"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Angel/Angel_002.jpg"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Angel/Angel_003.jpg"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Candee/Candee_001.jpg"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Candee/Candee_002.JPG"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Candee/Candee_003.JPG"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Candee/DSC_0509.JPG"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Candee/DSC_0516.JPG"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Candee/DSC_0546.JPG"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Candee/Unknown.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Jomere/Jomere_001.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Jomere/Jomere_002.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Jomere/Jomere_003.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Rebecca/Rebecca_001.jpg"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Rebecca/Rebecca_002.jpg"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Rebecca/Rebecca_003.jpg"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Rebecca/Rebecca_004.jpg"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Unknown/SCALED__PERSONA copie.png"
    }

    MyImage {
        mSource: "Images/InteractCharacter/Unknown/Unknown.png"
    }

    MyImage {
        mSource: "Images/InteractItem/battery_boxes.png"
    }

    MyImage {
        mSource: "Images/InteractItem/battery_shelf.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Calculator.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Calculator_front_view.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Calculator_working.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Charger.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Diary_Boss.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Diary_Rival.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Diary_Rivale_decoded.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Drill.png"
    }

    MyImage {
        mSource: "Images/InteractItem/DrillFullyCharged.png"
    }

    MyImage {
        mSource: "Images/InteractItem/HappyBirthday.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Jom_Item_Flashlight_0000.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Jom_Item_Handcuffs_Closed_0000.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Jom_Item_PaperCode_Front_0000.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Jom_Item_TourGuideFront_0000.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Jug.png"
    }

    MyImage {
        mSource: "Images/InteractItem/JugFullyCharged.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Key.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Note_from_cup.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Rose.png"
    }

    MyImage {
        mSource: "Images/InteractItem/two_batteries.png"
    }

    MyImage {
        mSource: "Images/InteractItem/Wire_cutter.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/boss_monitor_closeup.jpg"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/boxes_light_no_battery.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/boxes_light_with_battery.jpg"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/Final_codes.jpg"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/IItemDiaryBoss.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/IItemDiaryBossCornerLeft.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/IItemDiaryBossCornerRight.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/IItemDiaryRival.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/IItemDiaryRivalCornerLeft.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/IItemDiaryRivalCornerRight.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/Welcome_Screen_character.png"
    }

    MyImage {
        mSource: "Images/InteractPuzzles/wellcomke screen v2_00000.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewComplex/Chart.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewComplex/Door view v7.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewComplex/Live.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/ada_journal_view.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Assistant desk closeup.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Assistant desk drawer.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Assistant_desk_drawer_empty.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Assistant_desk_drawer_front.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Assistant_screen.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Assistant_view_drill.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Assistant_View_Patch_Drill.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/book_back_page.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Boss desk closeup (no fan).jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/BossDrawer_00.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/BossDrawer_01.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/BossDrawer_10.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/BossDrawer_11.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Boss_cupboard_opened_items.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Boss_cupboard_opened_no_cutter.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Boss_cupboard_opened_no_tourist.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Boss_desk_closeup_patch_flashlight.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Boss_desk_drawer_front.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/boss_main_view_full_water_patch.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Boss_PostIt_Zoom.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Boxes view.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/boxes_dark_no_battery.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Bull and Bear.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/comedy_art_picture_view.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboard with books.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Cupboard with items.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboards_right_no_jug.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboards_rigth_no_battery.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboards_rigth_no_charger.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboards_rigth_zoom_no_battery.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboards_rigth_zoom_no_charger.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboards_rigth_zoom_no_jug.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboard_view_full_water.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupboard_view_key_in_water.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/cupborads_view.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Door view.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/door_view_no_drill.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/door_view_no_flashlight.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/green_lock.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/kay in water view.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Main boss table view.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Patch_Closet_semiOpened.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Pipes_closeUp.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Studio area view.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Studio area view_patch_no_battery.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Studio area view_patch_no_charger.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Studio area view_patch_no_jug.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/ViewSimple_PipeGas.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/ViewSimple_PipeWater.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/ViewSimple_PipeWaterFall.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Work area.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/workarea_no_battery.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/workarea_no_charger.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/workarea_no_jug.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Work_area_drill.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimple/Work_area_flashlight.jpg"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/000.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Ada journal.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Ada Paint.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Assistant desk closeup_Display.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Assistant desk closeup_Roses.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Assistant desk closeup_shelf.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Assistant table.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Assistant_desk_drawer_glow_paper.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Assistant_drill_glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Bokk on the boss table.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Book.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/boss table drawer.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Boss_desk_closeup_top_drawer_glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Boss_desk_glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Boss_desk_monitor_glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/boss_main_view_cupboard_glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Boss_main_view_TubeKey.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Bull and Bear_pipes.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Calculator battery.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/cupboards view ada journal glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/cupboards view comedy art glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/cupboard_view_key_in_water_glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Drill battery.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Drill.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/flashlight.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Fun Art.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Funny Art.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Funny Paint.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Gas tube.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_Boxes.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_cupboards_rigth_000.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_cupboards_rigth_001.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_cupboards_rigth_010.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_cupboards_rigth_011.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_cupboards_rigth_100.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_cupboards_rigth_101.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_cupboards_rigth_110.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_cupboards_rigth_111.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Glow_Jug.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Item_Calculator.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Item_Diary.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/lock_glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/m_boss_view_cupborad_closed_glow.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/opened cupboard v2.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Post-it_code.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/shelf with books.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/SomChai books.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Tourist guide.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Water tube.png"
    }

    MyImage {
        mSource: "Images/InteractViewSimpleGlow/Wire cutter.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/general/BG_General.jpg"
    }

    MyImage {
        mSource: "Images/librairies_escape/general/Cross_Exit.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/general/Cross_Exit_hovered.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/general/Hint.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/general/Hint_Hover.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/general/Settings.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/general/Settings_hover_white.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactCharacter/BG__UNI__01.jpg"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactCharacter/Video_lock_plain.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactCharacter/Video_lock_transparent - Copy.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactCharacter/Video_lock_transparent.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactCharacter/Video_Play.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactItems/ESCAPE_Game__INTERFACE__BG_Items.jpg"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactItems/ESCAPE_Game__INTERFACE__CADRE_Centre___Items.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactViewSimple/ArrowBottom.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactViewSimple/ArrowLeft.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactViewSimple/ArrowRight.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/interactViewSimple/ArrowTop.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/matcher/background_matcher.jpg"
    }

    MyImage {
        mSource: "Images/librairies_escape/matcher/button_Matcher.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/matcher/button_Matcher_hover.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/matcher/MATCHER.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/matcher/MATCHER_hover.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/matcher/Rotation_Left.png"
    }

    MyImage {
        mSource: "Images/librairies_escape/matcher/Rotation_Right.png"
    }

    MyImage {
        mSource: "Images/Pictos/Abstract/Picto_character_unknown.png"
    }

    MyImage {
        mSource: "Images/Pictos/Abstract/Scroll_items_empty.png"
    }

    MyImage {
        mSource: "Images/Pictos/Characters/Ada.png"
    }

    MyImage {
        mSource: "Images/Pictos/Characters/Angel.png"
    }

    MyImage {
        mSource: "Images/Pictos/Characters/Candee.jpg"
    }

    MyImage {
        mSource: "Images/Pictos/Characters/Jomere.png"
    }

    MyImage {
        mSource: "Images/Pictos/Characters/Rebecca.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/battery_from_boxes.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/battery_in_case.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_500M.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_BDayCard.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Boxes.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Calculator.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_CalculatorZero.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Codes.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_diary.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Drill.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_DrillCharger.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_DrillFull.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Flashlight.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_HandcuffsClosed.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Jug.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_JugWater.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Key.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Notebook.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_NoteCode.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Padlock.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Pipe.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_Rose.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_TourGuide.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_TubeWaterDrilled.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_WaterTubeKey.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/IconItems3d_WireCutter.png"
    }

    MyImage {
        mSource: "Images/Pictos/Items/two_batteries.png"
    }

    MyImage {
        mSource: "Images/Verrou/Boxes_Verrou.png"
    }

    MyImage {
        mSource: "Images/Verrou/green_lock_verrou.png"
    }

    MyImage {
        mSource: "Images/Verrou/key_in_water.png"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Ada/0N0A1836.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Ada/0N0A1859.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Ada/0N0A1891.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Ada/0N0A1911.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Ada/0N0A1915.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Blacky/0N0A1540.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Blacky/0N0A1564.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Blacky/0N0A1597.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Blacky/0N0A1610.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Blacky/0N0A1636.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Candee_Blacky/0N0A1727.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Candee_Blacky/0N0A1745.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Candee_Blacky/0N0A1755.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Candee_Blacky/0N0A1770.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Candee_Blacky/0N0A1773.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Candee_Blacky/0N0A1785.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Candee_Blacky/0N0A1800.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Rebecca/0N0A1443.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Rebecca/0N0A1477.JPG"
    }

    MyImage {
        mSource: "Images/Videos_photos/sex_Rebecca/0N0A1494.JPG"
    }

    MyImage {
        mSource: "Sprites/2025_04_24_View_main_SideBullBear_Fontain/20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_1_Idx_6.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_24_View_main_SideBullBear_Fontain/20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_20_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_24_View_main_SideBullBear_Fontain/20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_20_Idx_2.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_24_View_main_SideBullBear_Fontain/20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_20_Idx_3.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_24_View_main_SideBullBear_Fontain/20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_20_Idx_4.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_24_View_main_SideBullBear_Fontain/20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_20_Idx_5.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_24_View_main_SideBullBear_Fontain/_20250425_Jomere_Fontain_XYWH_2548_759_197_765_Frequency_1_FrameCount_20_Idx_5.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_30_View_main_Boss_Fan/20250430_View_main_Boss_Fan_XYWH_2682_1220_147_145_Frequency_1_FrameCount_84_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_30_View_main_Cupboards_Cigar/20250430_View_main_Cupboards_Cigar_XYWH_767_1375_201_286_Frequency_1_FrameCount_30_Idx_2.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_30_View_main_Cupboards_Cigar/20250430_View_main_Cupboards_Cigar_XYWH_767_1375_201_286_Frequency_1_FrameCount_70_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_30_View_main_Doors_TV/20250510_View_main_Doors_TV_XYWH_0_0_256_256_Frequency_1_FrameCount_64_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_30_View_main_Doors_TV/20250510_View_main_Doors_TV_XYWH_0_0_256_256_Frequency_1_FrameCount_64_Idx_2.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_30_View_main_SideBullBear_cigar/20250430_View_main_SideBullBear_cigar_XYWH_2557_1377_40_121_Frequency_1_FrameCount_101_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_30_View_main_SideOffice_Fan/20250430_View_main_SideOffice_Fan_XYWH_2376_1255_139_96_Frequency_1_FrameCount_101_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_04_30_View_main_SideOffice_TV/20250430_View_main_SideOffice_TV_XYWH_965_839_112_304_Frequency_1_FrameCount_96_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_main_BullBear_Waterfall/20250505_View_main_BullBear_Waterfall_XYWH_2920_478_561_1535_Frequency_7_FrameCount_3_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_main_BullBear_Waterfall/20250505_View_main_BullBear_Waterfall_XYWH_2920_478_561_1535_Frequency_7_FrameCount_3_Idx_2.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_main_BullBear_Waterfall/20250505_View_main_BullBear_Waterfall_XYWH_2920_478_561_1535_Frequency_7_FrameCount_3_Idx_3.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_main_BullBear_Waterfall/20250505_View_main_BullBear_Waterfall_XYWH_2920_478_561_1535_Frequency_7_FrameCount_3_Idx_4.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_10.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_11.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_12.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_13.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_14.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_15.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_16.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_17.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_18.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_19.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_2.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_20.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_21.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_22.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_23.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_24.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_25.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_3.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_4.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_5.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_6.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_7.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_8.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_01_View_Pipes_Waterfall/20250502_View_Pipes_Waterfall_XYWH_2114_1058_506_1102_Frequency_1_FrameCount_4_Idx_9.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_05_View_main_Doors_Red_Light/alarm_sequence_00004.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_05_View_main_SideBullBear_Fontain/20250506_View_main_SideBullBear_Fontain_XYWH_2584_781_128_724_Frequency_7_FrameCount_15_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_05_View_main_SideOffice_Red_light/workarea_alarm_00003.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_08_View_BossDesk/20250508_View_BossDesk_XYWH_95_799_512_512_Frequency_2_FrameCount_16_Idx_1.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_08_View_BossDesk/20250508_View_BossDesk_XYWH_95_799_512_512_Frequency_2_FrameCount_16_Idx_2.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_08_View_BossDesk/20250508_View_BossDesk_XYWH_95_799_512_512_Frequency_2_FrameCount_16_Idx_3.png"
    }

    MyImage {
        mSource: "Sprites/2025_05_08_View_BossDesk/20250508_View_BossDesk_XYWH_95_799_512_512_Frequency_2_FrameCount_3_Idx_4.png"
    }







}
