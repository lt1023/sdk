.class Landroid/support/browser/ACC$5$1;
.super Ljava/lang/Object;
.source "ACC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/ACC$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/browser/ACC$5;


# direct methods
.method constructor <init>(Landroid/support/browser/ACC$5;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/browser/ACC$5;

    .line 203
    iput-object p1, p0, Landroid/support/browser/ACC$5$1;->this$0:Landroid/support/browser/ACC$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 206
    invoke-static {}, Landroid/support/browser/ACC;->showInterstitial()V

    .line 207
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/browser/ACC;->access$202(Z)Z

    .line 208
    return-void
.end method
