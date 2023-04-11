.class Landroid/app/intent$3;
.super Ljava/lang/Object;
.source "intent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/intent;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/intent;


# direct methods
.method constructor <init>(Landroid/app/intent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/intent;

    .line 158
    iput-object p1, p0, Landroid/app/intent$3;->this$0:Landroid/app/intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/app/intent$3;->this$0:Landroid/app/intent;

    invoke-static {v0}, Landroid/app/intent;->access$900(Landroid/app/intent;)V

    .line 163
    return-void
.end method
