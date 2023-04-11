.class public final Landroidx/media2/common/SubtitleData;
.super Ljava/lang/Object;
.source "SubtitleData.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final TAG:Ljava/lang/String; = "SubtitleData"


# instance fields
.field mData:[B

.field mDurationUs:J

.field mStartTimeUs:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(JJ[B)V
    .locals 0
    .param p1, "startTimeUs"    # J
    .param p3, "durationUs"    # J
    .param p5, "data"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    .line 90
    iput-wide p3, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    .line 91
    iput-object p5, p0, Landroidx/media2/common/SubtitleData;->mData:[B

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 126
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 127
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 128
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/common/SubtitleData;

    .line 129
    .local v2, "that":Landroidx/media2/common/SubtitleData;
    iget-wide v3, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    iget-wide v5, v2, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    iget-wide v3, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    iget-wide v5, v2, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    iget-object v3, p0, Landroidx/media2/common/SubtitleData;->mData:[B

    iget-object v4, v2, Landroidx/media2/common/SubtitleData;->mData:[B

    .line 131
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 129
    :cond_3
    nop

    .line 131
    :goto_0
    const/4 v0, 0x0

    .line 129
    :goto_1
    return v0

    .line 127
    .end local v2    # "that":Landroidx/media2/common/SubtitleData;
    :cond_4
    :goto_2
    nop

    return v1
.end method

.method public getData()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 121
    iget-object v0, p0, Landroidx/media2/common/SubtitleData;->mData:[B

    return-object v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 107
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    return-wide v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .line 99
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/common/SubtitleData;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
