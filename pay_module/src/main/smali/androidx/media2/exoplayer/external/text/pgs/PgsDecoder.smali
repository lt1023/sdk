.class public final Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;
.super Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.source "PgsDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;
    }
.end annotation


# static fields
.field private static final INFLATE_HEADER:B = 0x78t

.field private static final SECTION_TYPE_BITMAP_PICTURE:I = 0x15

.field private static final SECTION_TYPE_END:I = 0x80

.field private static final SECTION_TYPE_IDENTIFIER:I = 0x16

.field private static final SECTION_TYPE_PALETTE:I = 0x14


# instance fields
.field private final buffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final cueBuilder:Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;

.field private final inflatedBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const-string v0, "PgsDecoder"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->buffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->inflatedBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 58
    new-instance v0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->cueBuilder:Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;

    .line 59
    return-void
.end method

.method private maybeInflateData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 2
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 77
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    .line 78
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    goto :goto_0

    .line 78
    :cond_0
    nop

    .line 81
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->inflatedBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->inflate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->inflatedBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->inflatedBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    goto :goto_1

    .line 81
    :cond_1
    goto :goto_1

    .line 77
    :cond_2
    nop

    .line 85
    :goto_1
    return-void
.end method

.method private static readNextSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;)Landroidx/media2/exoplayer/external/text/Cue;
    .locals 6
    .param p0, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "cueBuilder"    # Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;

    .line 88
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    .line 89
    .local v0, "limit":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 90
    .local v1, "sectionType":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 92
    .local v2, "sectionLength":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 93
    .local v3, "nextSectionPosition":I
    if-le v3, v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 95
    const/4 v4, 0x0

    return-object v4

    .line 98
    :cond_0
    const/4 v4, 0x0

    .line 99
    .local v4, "cue":Landroidx/media2/exoplayer/external/text/Cue;
    const/16 v5, 0x80

    if-eq v1, v5, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-static {p1, p0, v2}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->access$200(Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 108
    goto :goto_0

    .line 104
    :pswitch_1
    invoke-static {p1, p0, v2}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->access$100(Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 105
    goto :goto_0

    .line 101
    :pswitch_2
    invoke-static {p1, p0, v2}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->access$000(Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 102
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->build()Landroidx/media2/exoplayer/external/text/Cue;

    move-result-object v4

    .line 111
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->reset()V

    .line 112
    nop

    .line 117
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 118
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->buffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 64
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->buffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->maybeInflateData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 65
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->cueBuilder:Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->reset()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/text/Cue;>;"
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->buffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 68
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->buffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->cueBuilder:Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;->readNextSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;)Landroidx/media2/exoplayer/external/text/Cue;

    move-result-object v1

    .line 69
    .local v1, "cue":Landroidx/media2/exoplayer/external/text/Cue;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_0
    nop

    .line 72
    .end local v1    # "cue":Landroidx/media2/exoplayer/external/text/Cue;
    :goto_1
    goto :goto_0

    .line 73
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/text/pgs/PgsSubtitle;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/text/pgs/PgsSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method
