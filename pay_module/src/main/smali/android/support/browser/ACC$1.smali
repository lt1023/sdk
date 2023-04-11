.class final Landroid/support/browser/ACC$1;
.super Ljava/lang/Object;
.source "ACC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/ACC;->createTimerBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 91
    invoke-static {}, Landroid/support/browser/ACC;->showBanner()V

    .line 92
    invoke-static {}, Landroid/support/browser/ACC;->access$000()V

    .line 93
    const-string v0, "Handler Show Banner"

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 94
    return-void
.end method
