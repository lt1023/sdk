.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BrowserActionsFallbackMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

.field final synthetic val$isEnterAnimation:Z


# direct methods
.method constructor <init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;Z)V
    .locals 0
    .param p1, "this$0"    # Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    .line 80
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    iput-boolean p2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->val$isEnterAnimation:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 83
    iget-boolean v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->val$isEnterAnimation:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    invoke-static {v0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->access$001(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;)V

    goto :goto_0

    .line 83
    :cond_0
    nop

    .line 86
    :goto_0
    return-void
.end method
