package com.meevii.analyze;

public class PbnAnalyze {
    public static class PicShowRate {
        public static enum From {
            DailyPic("daily_pic"),
            LibraryBonusPic("home_bonus_pic"),
            LibraryLevelPic("home_level_pic"),
            LibraryOpPic("home_op_pic"),
            LibraryTestPic("home_test_pic"),
            NewDailyPic("new_daily_pic"),
            PackPic("home_activity_pic"),
            ThemePackPic("home_themepack_pic");

            final String value;

            private From(String var3) {
                this.value = var3;
            }
        }

        public static enum Type {
            CLICK_PURCHASE("click_purchase"),
            CLICK_UNLOCK("click_unlock"),
            CLICK_VIDEO("click_video");

            final String value;

            private Type(String var3) {
                this.value = var3;
            }
        }
    }
}
