.class final Landroid/support/browser/ACC$11;
.super Ljava/util/TimerTask;
.source "ACC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/ACC;->checkFirstShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 399
    invoke-static {}, Landroid/support/browser/ACC;->access$1100()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/support/browser/ACC;->access$1102(I)I

    .line 400
    invoke-static {}, Landroid/support/browser/ACC;->access$1100()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 401
    sget-object v0, Landroid/support/browser/ACC;->mTimerTaskFirstShow:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 402
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/browser/utils/MyHelper;->isZero:Z

    .line 403
    invoke-static {}, Landroid/support/browser/ACC;->access$800()V

    .line 405
    :cond_0
    return-void
.end method
