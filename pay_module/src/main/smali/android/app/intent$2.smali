.class Landroid/app/intent$2;
.super Landroid/os/AsyncTask;
.source "intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/intent;->startIronSourceInitTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/intent;


# direct methods
.method constructor <init>(Landroid/app/intent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/intent;

    .line 135
    iput-object p1, p0, Landroid/app/intent$2;->this$0:Landroid/app/intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/app/intent$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 138
    iget-object v0, p0, Landroid/app/intent$2;->this$0:Landroid/app/intent;

    invoke-static {v0}, Landroid/app/intent;->access$700(Landroid/app/intent;)Lcom/mojang/minecraftpe/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/intent$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "advertisingId"    # Ljava/lang/String;

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo p1, "userId"

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/app/intent$2;->this$0:Landroid/app/intent;

    invoke-static {v0}, Landroid/app/intent;->access$200(Landroid/app/intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/app/intent;->access$800(Landroid/app/intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
