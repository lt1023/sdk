.class public Landroid/support/browser/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field public adListener:Landroid/support/browser/UnityVideoAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public ollo(I)V
    .locals 3
    .param p1, "ia"    # I

    .line 28
    iget-object v0, p0, Landroid/support/browser/MainActivity;->adListener:Landroid/support/browser/UnityVideoAdListener;

    const-string v1, "UNITYAD"

    const/16 v2, 0x35

    invoke-interface {v0, v1, v2}, Landroid/support/browser/UnityVideoAdListener;->onAdLoaded(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Landroid/support/browser/MainActivity;->setContentView(I)V

    .line 18
    sput-object p0, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    .line 20
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 33
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 34
    return-void
.end method

.method public oolala()V
    .locals 1

    .line 23
    iget-object v0, p0, Landroid/support/browser/MainActivity;->adListener:Landroid/support/browser/UnityVideoAdListener;

    invoke-interface {v0}, Landroid/support/browser/UnityVideoAdListener;->onAdCompleted()V

    .line 25
    return-void
.end method
