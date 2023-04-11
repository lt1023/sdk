.class public final Landroidx/media2/exoplayer/external/metadata/emsg/EventMessageDecoder;
.super Ljava/lang/Object;
.source "EventMessageDecoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventMessageDecoder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 27
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    .line 48
    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 49
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 50
    .local v2, "data":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 51
    .local v3, "size":I
    new-instance v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v4, v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    .line 52
    .local v4, "emsgData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 53
    .local v5, "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    .line 54
    .local v14, "value":Ljava/lang/String;
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    .line 55
    .local v15, "timescale":J
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 56
    .local v12, "presentationTimeDelta":J
    const-wide/16 v6, 0x0

    cmp-long v8, v12, v6

    if-eqz v8, :cond_0

    .line 59
    const-string v6, "EventMessageDecoder"

    const/16 v7, 0x3f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Ignoring non-zero presentation_time_delta: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    nop

    .line 61
    :goto_0
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    move-wide v10, v15

    invoke-static/range {v6 .. v11}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v17

    .line 62
    .local v17, "durationMs":J
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    .line 63
    .local v19, "id":J
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-static {v2, v6, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v21

    .line 64
    .local v21, "messageData":[B
    new-instance v11, Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v6, 0x1

    new-array v9, v6, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/16 v22, 0x0

    new-instance v23, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;

    move-object/from16 v6, v23

    move-object v7, v5

    move-object v8, v14

    move-object v0, v9

    move-wide/from16 v9, v17

    move-wide/from16 v24, v12

    move-object v13, v11

    .end local v12    # "presentationTimeDelta":J
    .local v24, "presentationTimeDelta":J
    move-wide/from16 v11, v19

    move-object/from16 v26, v1

    move-object v1, v13

    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .local v26, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v13, v21

    invoke-direct/range {v6 .. v13}, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    aput-object v23, v0, v22

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object v1
.end method
