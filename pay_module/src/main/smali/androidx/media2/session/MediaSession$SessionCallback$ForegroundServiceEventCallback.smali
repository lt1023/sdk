.class abstract Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession$SessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ForegroundServiceEventCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V
    .locals 0
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
    .param p2, "state"    # I

    .line 820
    return-void
.end method

.method public onSessionClosed(Landroidx/media2/session/MediaSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/media2/session/MediaSession;

    .line 821
    return-void
.end method
