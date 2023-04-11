.class public final Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final durationMs:J

.field private hashCode:I

.field public final id:J

.field public final messageData:[B

.field public final schemeIdUri:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->durationMs:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->id:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->messageData:[B

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .locals 0
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "durationMs"    # J
    .param p5, "id"    # J
    .param p7, "messageData"    # [B

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->durationMs:J

    .line 78
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->id:J

    .line 79
    iput-object p7, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->messageData:[B

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 107
    return v0

    .line 109
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 112
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;

    .line 113
    .local v2, "other":Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->durationMs:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->durationMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_5

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->id:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_5

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 115
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 116
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->messageData:[B

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->messageData:[B

    .line 117
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 116
    :cond_3
    goto :goto_0

    .line 115
    :cond_4
    goto :goto_0

    .line 113
    :cond_5
    nop

    .line 117
    :goto_0
    const/4 v0, 0x0

    .line 113
    :goto_1
    return v0

    .line 109
    .end local v2    # "other":Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;
    :cond_6
    :goto_2
    nop

    .line 110
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 92
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->hashCode:I

    if-nez v0, :cond_2

    .line 93
    const/16 v0, 0x11

    .line 94
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 95
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    nop

    :cond_1
    add-int/2addr v0, v3

    .line 96
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->durationMs:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 97
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->id:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 98
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->messageData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 99
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->hashCode:I

    goto :goto_1

    .line 92
    .end local v1    # "result":I
    :cond_2
    nop

    .line 101
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->id:J

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "EMSG: scheme="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->messageData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    return-void
.end method
