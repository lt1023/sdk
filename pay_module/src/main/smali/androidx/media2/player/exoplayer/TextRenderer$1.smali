.class Landroidx/media2/player/exoplayer/TextRenderer$1;
.super Ljava/lang/Object;
.source "TextRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/exoplayer/TextRenderer;->maybeAdvertiseChannel(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/exoplayer/TextRenderer;

.field final synthetic val$channel:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/TextRenderer;II)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/exoplayer/TextRenderer;

    .line 256
    iput-object p1, p0, Landroidx/media2/player/exoplayer/TextRenderer$1;->this$0:Landroidx/media2/player/exoplayer/TextRenderer;

    iput p2, p0, Landroidx/media2/player/exoplayer/TextRenderer$1;->val$type:I

    iput p3, p0, Landroidx/media2/player/exoplayer/TextRenderer$1;->val$channel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 259
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$1;->this$0:Landroidx/media2/player/exoplayer/TextRenderer;

    iget-object v0, v0, Landroidx/media2/player/exoplayer/TextRenderer;->mOutput:Landroidx/media2/player/exoplayer/TextRenderer$Output;

    iget v1, p0, Landroidx/media2/player/exoplayer/TextRenderer$1;->val$type:I

    iget v2, p0, Landroidx/media2/player/exoplayer/TextRenderer$1;->val$channel:I

    invoke-interface {v0, v1, v2}, Landroidx/media2/player/exoplayer/TextRenderer$Output;->onChannelAvailable(II)V

    .line 260
    return-void
.end method
