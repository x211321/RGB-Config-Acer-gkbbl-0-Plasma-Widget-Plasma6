import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as QtControls
import org.kde.kquickcontrols as KQuickControls
import org.kde.kirigami as Kirigami
import org.kde.kquickcontrols as KQControls


    Kirigami.FormLayout {
        id: page
        property alias cfg_customIconColor: customIconColor.color
        property alias cfg_showHeader: showHeader.checked
        property alias cfg_applyOnStartup: applyOnStartup.checked

        RowLayout {
            Kirigami.FormData.label:i18n("Show header:")

            QtControls.CheckBox {
                id: showHeader
            }
        }

        RowLayout {
            Kirigami.FormData.label:i18n("Apply last settings on startup:")

            QtControls.CheckBox {
                id: applyOnStartup
            }
        }

        RowLayout {
            Kirigami.FormData.label:i18n("Tray icon color:")

            KQuickControls.ColorButton {
                id: customIconColor
            }
        }

    }

