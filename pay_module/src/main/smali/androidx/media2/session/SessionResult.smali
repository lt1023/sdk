.class public Landroidx/media2/session/SessionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SessionResult.java"

# interfaces
.implements Landroidx/media2/session/RemoteResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionResult$ResultCode;
    }
.end annotation


# static fields
.field public static final RESULT_SUCCESS:I


# instance fields
.field mCompletionTime:J

.field mCustomCommandResult:Landroid/os/Bundle;

.field mItem:Landroidx/media2/common/MediaItem;

.field mParcelableItem:Landroidx/media2/common/MediaItem;

.field mResultCode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 108
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "customCommandResult"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V

    .line 103
    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "customCommandResult"    # Landroid/os/Bundle;
    .param p3, "item"    # Landroidx/media2/common/MediaItem;

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V

    .line 116
    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "customCommandResult"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "completionTime"    # J

    .line 119
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 120
    iput p1, p0, Landroidx/media2/session/SessionResult;->mResultCode:I

    .line 121
    iput-object p2, p0, Landroidx/media2/session/SessionResult;->mCustomCommandResult:Landroid/os/Bundle;

    .line 122
    iput-object p3, p0, Landroidx/media2/session/SessionResult;->mItem:Landroidx/media2/common/MediaItem;

    .line 123
    iput-wide p4, p0, Landroidx/media2/session/SessionResult;->mCompletionTime:J

    .line 124
    return-void
.end method

.method static createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v0

    .line 137
    .local v0, "result":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/SessionResult;>;"
    new-instance v1, Landroidx/media2/session/SessionResult;

    invoke-direct {v1, p0}, Landroidx/media2/session/SessionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 138
    return-object v0
.end method

.method static from(Landroidx/media2/common/SessionPlayer$PlayerResult;)Landroidx/media2/session/SessionResult;
    .locals 7
    .param p0, "result"    # Landroidx/media2/common/SessionPlayer$PlayerResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 128
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Landroidx/media2/session/SessionResult;

    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer$PlayerResult;->getResultCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer$PlayerResult;->getMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v4

    .line 132
    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer$PlayerResult;->getCompletionTime()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V

    .line 131
    return-object v0
.end method


# virtual methods
.method public getCompletionTime()J
    .locals 2

    .line 193
    iget-wide v0, p0, Landroidx/media2/session/SessionResult;->mCompletionTime:J

    return-wide v0
.end method

.method public getCustomCommandResult()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 182
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->mCustomCommandResult:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMediaItem()Landroidx/media2/common/MediaItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 213
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->mItem:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 165
    iget v0, p0, Landroidx/media2/session/SessionResult;->mResultCode:I

    return v0
.end method

.method public onPostParceling()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/session/SessionResult;->mItem:Landroidx/media2/common/MediaItem;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/SessionResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    .line 233
    return-void
.end method

.method public onPreParceling(Z)V
    .locals 1
    .param p1, "isStream"    # Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->mItem:Landroidx/media2/common/MediaItem;

    invoke-static {v0}, Landroidx/media2/session/MediaUtils;->upcastForPreparceling(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionResult;->mParcelableItem:Landroidx/media2/common/MediaItem;

    .line 223
    return-void
.end method
