.class final Landroid/support/browser/ACC$5;
.super Ljava/lang/Object;
.source "ACC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/ACC;->showAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v1, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget-object v1, v1, Landroid/support/browser/ez/AdssData;->p01:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 202
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget-object v2, v2, Landroid/support/browser/ez/AdssData;->p02:Ljava/lang/String;

    new-instance v3, Landroid/support/browser/ACC$5$1;

    invoke-direct {v3, p0}, Landroid/support/browser/ACC$5$1;-><init>(Landroid/support/browser/ACC$5;)V

    .line 203
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 211
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 212
    return-void
.end method
