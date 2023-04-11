.class final Landroid/support/browser/ACC$7;
.super Ljava/lang/Object;
.source "ACC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/ACC;->mNewFirstShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 246
    sget-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget-boolean v0, v0, Landroid/support/browser/ez/AdssData;->p03:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Landroid/support/browser/ACC;->access$400()V

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Landroid/support/browser/ACC;->showInterstitial()V

    .line 249
    :goto_0
    const-string v0, "My Handler"

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 250
    return-void
.end method
