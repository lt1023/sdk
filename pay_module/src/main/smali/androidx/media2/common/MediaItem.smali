.class public Landroidx/media2/common/MediaItem;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/MediaItem$OnMetadataChangedListener;,
        Landroidx/media2/common/MediaItem$Builder;
    }
.end annotation


# static fields
.field static final LONG_MAX:J = 0x7ffffffffffffffL

.field public static final POSITION_UNKNOWN:J = 0x7ffffffffffffffL

.field private static final TAG:Ljava/lang/String; = "MediaItem"


# instance fields
.field mEndPositionMs:J

.field private final mListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Landroidx/media2/common/MediaItem$OnMetadataChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mMetadata:Landroidx/media2/common/MediaMetadata;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mStartPositionMs:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    .line 86
    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    .line 97
    return-void
.end method

.method constructor <init>(Landroidx/media2/common/MediaItem$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroidx/media2/common/MediaItem$Builder;

    .line 106
    iget-object v1, p1, Landroidx/media2/common/MediaItem$Builder;->mMetadata:Landroidx/media2/common/MediaMetadata;

    iget-wide v2, p1, Landroidx/media2/common/MediaItem$Builder;->mStartPositionMs:J

    iget-wide v4, p1, Landroidx/media2/common/MediaItem$Builder;->mEndPositionMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaMetadata;JJ)V

    .line 107
    return-void
.end method

.method constructor <init>(Landroidx/media2/common/MediaItem;)V
    .locals 6
    .param p1, "item"    # Landroidx/media2/common/MediaItem;

    .line 110
    iget-object v1, p1, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    iget-wide v2, p1, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    iget-wide v4, p1, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaMetadata;JJ)V

    .line 111
    return-void
.end method

.method constructor <init>(Landroidx/media2/common/MediaMetadata;JJ)V
    .locals 7
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "startPositionMs"    # J
    .param p4, "endPositionMs"    # J

    .line 114
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    .line 86
    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    .line 115
    cmp-long v2, p2, p4

    if-gtz v2, :cond_3

    .line 119
    if-eqz p1, :cond_2

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p1, v2}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p1, v2}, Landroidx/media2/common/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 121
    .local v2, "durationMs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    cmp-long v4, p4, v0

    if-eqz v4, :cond_1

    cmp-long v0, p4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endPositionMs shouldn\'t be greater than duration in the metdata, endPositionMs="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", durationMs="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    :goto_0
    goto :goto_1

    .line 119
    .end local v2    # "durationMs":J
    :cond_2
    nop

    .line 128
    :goto_1
    iput-object p1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    .line 129
    iput-wide p2, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    .line 130
    iput-wide p4, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    .line 131
    return-void

    .line 116
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start/end position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOnMetadataChangedListener(Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem$OnMetadataChangedListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroidx/media2/common/MediaItem$OnMetadataChangedListener;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    .line 227
    .local v2, "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    .line 228
    monitor-exit v0

    return-void

    .line 227
    :cond_0
    nop

    .line 230
    .end local v2    # "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, p2, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public getEndPosition()J
    .locals 2

    .line 200
    iget-wide v0, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    return-wide v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    const-string v2, "android.media.metadata.MEDIA_ID"

    .line 215
    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 214
    return-object v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMetadata()Landroidx/media2/common/MediaMetadata;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    monitor-exit v0

    return-object v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStartPosition()J
    .locals 2

    .line 191
    iget-wide v0, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    return-wide v0
.end method

.method public onPreParceling(Z)V
    .locals 2
    .param p1, "isStream"    # Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/common/MediaItem;

    if-ne v0, v1, :cond_0

    .line 343
    invoke-super {p0, p1}, Landroidx/versionedparcelable/CustomVersionedParcelable;->onPreParceling(Z)V

    .line 344
    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MediaItem\'s subclasses shouldn\'t be parcelized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMetadataChangedListener(Landroidx/media2/common/MediaItem$OnMetadataChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/media2/common/MediaItem$OnMetadataChangedListener;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 242
    iget-object v2, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 243
    iget-object v2, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 244
    monitor-exit v0

    return-void

    .line 241
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public setMetadata(Landroidx/media2/common/MediaMetadata;)V
    .locals 6
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;>;"
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v2, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media2/common/MediaMetadata;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const-string v2, "MediaItem"

    const-string v3, "MediaItem\'s media ID shouldn\'t be changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v1

    return-void

    .line 156
    :cond_0
    goto :goto_0

    .line 155
    :cond_1
    nop

    .line 160
    :goto_0
    iput-object p1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    .line 161
    iget-object v2, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    .line 165
    .local v2, "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/common/MediaItem$OnMetadataChangedListener;

    .line 166
    .local v3, "listener":Landroidx/media2/common/MediaItem$OnMetadataChangedListener;
    iget-object v4, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/media2/common/MediaItem$1;

    invoke-direct {v5, p0, v3}, Landroidx/media2/common/MediaItem$1;-><init>(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem$OnMetadataChangedListener;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 172
    .end local v2    # "pair":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    .end local v3    # "listener":Landroidx/media2/common/MediaItem$OnMetadataChangedListener;
    goto :goto_1

    .line 173
    :cond_2
    return-void

    .line 162
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    const-string/jumbo v2, "{mMetadata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, ", mStartPositionMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, ", mEndPositionMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 141
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
