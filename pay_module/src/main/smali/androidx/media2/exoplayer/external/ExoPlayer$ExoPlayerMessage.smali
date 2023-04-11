.class public final Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExoPlayerMessage"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final message:Ljava/lang/Object;

.field public final messageType:I

.field public final target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/PlayerMessage$Target;ILjava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Landroidx/media2/exoplayer/external/PlayerMessage$Target;
    .param p2, "messageType"    # I
    .param p3, "message"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    .line 145
    iput p2, p0, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->messageType:I

    .line 146
    iput-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    .line 147
    return-void
.end method
