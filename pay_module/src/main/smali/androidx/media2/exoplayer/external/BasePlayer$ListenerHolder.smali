.class public final Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;
.super Ljava/lang/Object;
.source "BasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/BasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ListenerHolder"
.end annotation


# instance fields
.field public final listener:Landroidx/media2/exoplayer/external/Player$EventListener;

.field private released:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 160
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 179
    if-ne p0, p1, :cond_0

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 182
    :cond_2
    :goto_0
    nop

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .locals 1
    .param p1, "listenerInvocation"    # Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;

    .line 172
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->released:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;->invokeListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    goto :goto_0

    .line 172
    :cond_0
    nop

    .line 175
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->released:Z

    .line 165
    return-void
.end method
