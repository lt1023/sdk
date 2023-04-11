.class public Landroid/apps/Activity;
.super Landroid/app/Activity;
.source "Activity.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-string v0, "libiil2cpp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method
