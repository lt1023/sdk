.class public final Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;
.super Landroidx/media2/exoplayer/external/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field private static final MAX_PENDING_METADATA_COUNT:I = 0x5

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

.field private decoder:Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;

.field private final decoderFactory:Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;

.field private final formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

.field private inputStreamEnded:Z

.field private final output:Landroidx/media2/exoplayer/external/metadata/MetadataOutput;

.field private final outputHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingMetadata:[Landroidx/media2/exoplayer/external/metadata/Metadata;

.field private pendingMetadataCount:I

.field private pendingMetadataIndex:I

.field private final pendingMetadataTimestamps:[J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1
    .param p1, "output"    # Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    sget-object v0, Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;->DEFAULT:Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;-><init>(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;)V
    .locals 2
    .param p1, "output"    # Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "decoderFactory"    # Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;

    .line 91
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/BaseRenderer;-><init>(I)V

    .line 92
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/metadata/MetadataOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->output:Landroidx/media2/exoplayer/external/metadata/MetadataOutput;

    .line 93
    nop

    .line 94
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 95
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->decoderFactory:Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;

    .line 96
    new-instance v0, Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/FormatHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    .line 97
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    .line 98
    const/4 v0, 0x5

    new-array v1, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadata:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 99
    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    .line 100
    return-void
.end method

.method private flushPendingMetadata()V
    .locals 2

    .line 181
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadata:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 183
    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataCount:I

    .line 184
    return-void
.end method

.method private invokeRenderer(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 2
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->invokeRendererInternal(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 178
    :goto_0
    return-void
.end method

.method private invokeRendererInternal(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->output:Landroidx/media2/exoplayer/external/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/metadata/MetadataOutput;->onMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 200
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->invokeRendererInternal(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 191
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isEnded()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .line 158
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->flushPendingMetadata()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->decoder:Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;

    .line 160
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .line 118
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->flushPendingMetadata()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 120
    return-void
.end method

.method protected onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 2
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->decoderFactory:Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;->createDecoder(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->decoder:Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;

    .line 114
    return-void
.end method

.method public render(JJ)V
    .locals 8
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 124
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->inputStreamEnded:Z

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataCount:I

    if-ge v0, v1, :cond_4

    .line 125
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->clear()V

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 127
    .local v0, "result":I
    const/4 v3, -0x4

    if-ne v0, v3, :cond_3

    .line 128
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->inputStreamEnded:Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->isDecodeOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    iput-wide v4, v3, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 136
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->flip()V

    .line 137
    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataIndex:I

    iget v4, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/2addr v3, v4

    rem-int/2addr v3, v1

    .line 138
    .local v3, "index":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->decoder:Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    invoke-interface {v4, v5}, Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;->decode(Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v4

    .line 139
    .local v4, "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    if-eqz v4, :cond_2

    .line 140
    iget-object v5, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadata:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    aput-object v4, v5, v3

    .line 141
    iget-object v5, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget-object v6, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->buffer:Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    iget-wide v6, v6, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->timeUs:J

    aput-wide v6, v5, v3

    .line 142
    iget v5, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/2addr v5, v2

    iput v5, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataCount:I

    goto :goto_0

    .line 139
    :cond_2
    goto :goto_0

    .line 127
    .end local v3    # "index":I
    .end local v4    # "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    :cond_3
    goto :goto_0

    .line 124
    .end local v0    # "result":I
    :cond_4
    nop

    .line 148
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataCount:I

    if-lez v0, :cond_5

    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataIndex:I

    aget-wide v4, v0, v3

    cmp-long v0, v4, p1

    if-gtz v0, :cond_5

    .line 149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadata:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->invokeRenderer(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadata:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataIndex:I

    const/4 v4, 0x0

    aput-object v4, v0, v3

    .line 151
    add-int/2addr v3, v2

    rem-int/2addr v3, v1

    iput v3, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 152
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->pendingMetadataCount:I

    goto :goto_1

    .line 148
    :cond_5
    nop

    .line 154
    :goto_1
    return-void
.end method

.method public supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->decoderFactory:Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;->supportsFormat(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;->supportsFormatDrm(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 107
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
