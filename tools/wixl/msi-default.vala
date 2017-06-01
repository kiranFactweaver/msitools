namespace Wixl {

    public class MSIDefault {
        [Flags]
        public enum ActionFlags {
            ADMIN_EXECUTE_SEQUENCE,
            ADMIN_UI_SEQUENCE,
            ADVT_EXECUTE_SEQUENCE,
            INSTALL_EXECUTE_SEQUENCE,
            INSTALL_UI_SEQUENCE,

            ALL = -1,
        }

        public struct ActionInfo {
            string name;
            string? condition;
            int sequence;
            ActionFlags flags;
        }

        public enum Action {
            InstallInitialize,
            InstallExecute,
            InstallExecuteAgain,
            InstallFinalize,
            InstallFiles,
            InstallAdminPackage,
            FileCost,
            CostInitialize,
            CostFinalize,
            InstallValidate,
            ExecuteAction,
            CreateShortcuts,
            MsiPublishAssemblies,
            PublishComponents,
            PublishFeatures,
            PublishProduct,
            RegisterClassInfo,
            RegisterExtensionInfo,
            RegisterMIMEInfo,
            RegisterProgIdInfo,
            AllocateRegistrySpace,
            AppSearch,
            BindImage,
            CCPSearch,
            CreateFolders,
            DeleteServices,
            DuplicateFiles,
            FindRelatedProducts,
            InstallODBC,
            InstallServices,
            MsiConfigureServices,
            IsolateComponents,
            LaunchConditions,
            MigrateFeatureStates,
            MoveFiles,
            PatchFiles,
            ProcessComponents,
            RegisterComPlus,
            RegisterFonts,
            RegisterProduct,
            RegisterTypeLibraries,
            RegisterUser,
            RemoveDuplicateFiles,
            RemoveEnvironmentStrings,
            RemoveFiles,
            RemoveFolders,
            RemoveIniValues,
            RemoveODBC,
            RemoveRegistryValues,
            RemoveShortcuts,
            RMCCPSearch,
            SelfRegModules,
            SelfUnregModules,
            SetODBCFolders,
            StartServices,
            StopServices,
            MsiUnpublishAssemblies,
            UnpublishComponents,
            UnpublishFeatures,
            UnregisterClassInfo,
            UnregisterComPlus,
            UnregisterExtensionInfo,
            UnregisterFonts,
            UnregisterMIMEInfo,
            UnregisterProgIdInfo,
            UnregisterTypeLibraries,
            ValidateProductID,
            WriteEnvironmentStrings,
            WriteIniValues,
            WriteRegistryValues,
        }

        const ActionInfo[] actions = {
            { "InstallInitialize", null, 1500, ActionFlags.ADMIN_EXECUTE_SEQUENCE|ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "InstallExecute", "NOT Installed", 6500, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "InstallExecuteAgain", "NOT Installed", 6550, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "InstallFinalize", null, 6600, ActionFlags.ADMIN_EXECUTE_SEQUENCE|ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "InstallFiles", null, 4000, ActionFlags.ADMIN_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "InstallAdminPackage", null, 3900, ActionFlags.ADMIN_EXECUTE_SEQUENCE },
            { "FileCost", null, 900, ActionFlags.ADMIN_EXECUTE_SEQUENCE|ActionFlags.ADMIN_UI_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "CostInitialize", null, 800, ActionFlags.ALL },
            { "CostFinalize", null, 1000, ActionFlags.ALL },
            { "InstallValidate", null, 1400, ActionFlags.ADMIN_EXECUTE_SEQUENCE|ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "ExecuteAction", null, 1300, ActionFlags.ADMIN_UI_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "CreateShortcuts", null, 4500, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "MsiPublishAssemblies", null, 6250, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "PublishComponents", null, 6200, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "PublishFeatures", null, 6300, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "PublishProduct", null, 6400, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterClassInfo", null, 4600, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterExtensionInfo", null, 4700, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterMIMEInfo", null, 4900, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterProgIdInfo", null, 4800, ActionFlags.ADVT_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "AllocateRegistrySpace", "NOT Installed", 1550, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "AppSearch", null, 50, ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "BindImage", null, 4300, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "CCPSearch", "NOT Installed", 500, ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "CreateFolders", null, 3700, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "DeleteServices", "VersionNT", 2000, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "DuplicateFiles", null, 4210, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "FindRelatedProducts", null, 25, ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "InstallODBC", null, 5400, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "InstallServices", "VersionNT", 5800, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "MsiConfigureServices", "VersionNT>=600", 5850, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "IsolateComponents", null, 950, ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "LaunchConditions", null, 100, ActionFlags.ADMIN_EXECUTE_SEQUENCE|ActionFlags.ADMIN_UI_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "MigrateFeatureStates", null, 1200, ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "MoveFiles", null, 3800, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "PatchFiles", null, 4090, ActionFlags.ADMIN_EXECUTE_SEQUENCE|ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "ProcessComponents", null, 1600, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterComPlus", null, 5700, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterFonts", null, 5300, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterProduct", null, 6100, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterTypeLibraries", null, 5500, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RegisterUser", null, 6000, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RemoveDuplicateFiles", null, 3400, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RemoveEnvironmentStrings", null, 3300, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RemoveFiles", null, 3500, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RemoveFolders", null, 3600, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RemoveIniValues", null, 3100, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RemoveODBC", null, 2400, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RemoveRegistryValues", null, 2600, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RemoveShortcuts", null, 3200, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "RMCCPSearch", "NOT Installed", 600, ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "SelfRegModules", null, 5600, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "SelfUnregModules", null, 2200, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "SetODBCFolders", null, 1100, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "StartServices", "VersionNT", 5900, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "StopServices", "VersionNT", 1900, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "MsiUnpublishAssemblies", null, 1750, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnpublishComponents", null, 1700, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnpublishFeatures", null, 1800, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnregisterClassInfo", null, 2700, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnregisterComPlus", null, 2100, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnregisterExtensionInfo", null, 2800, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnregisterFonts", null, 2500, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnregisterMIMEInfo", null, 3000, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnregisterProgIdInfo", null, 2900, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "UnregisterTypeLibraries", null, 2300, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "ValidateProductID", null, 700, ActionFlags.INSTALL_EXECUTE_SEQUENCE|ActionFlags.INSTALL_UI_SEQUENCE },
            { "WriteEnvironmentStrings", null, 5200, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "WriteIniValues", null, 5100, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
            { "WriteRegistryValues", null, 5000, ActionFlags.INSTALL_EXECUTE_SEQUENCE },
        };

        public static ActionInfo get_action (Action action) {
            return actions[action];
        }

        public static ActionInfo? get_action_by_name (string name) {
            ActionInfo? action = null;

            try {
                action = actions[enum_from_string<Action> (name.down ())];
            } catch (GLib.Error error) {
            }

            return action;
        }
    }

} // Wixl
