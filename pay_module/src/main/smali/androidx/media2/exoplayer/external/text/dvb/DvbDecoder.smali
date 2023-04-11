.class public final Landroidx/media2/exoplayer/external/text/dvb/DvbDecoder;
.super Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;
.source "DvbDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final parser:Landroidx/media2/exoplayer/external/text/dvb/DvbParser;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 41
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "DvbDecoder"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 43
    .local v0, "data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 44
    .local v1, "subtitleCompositionPage":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 45
    .local v2, "subtitleAncillaryPage":I
    new-instance v3, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;

    invoke-direct {v3, v1, v2}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;-><init>(II)V

    iput-object v3, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbDecoder;->parser:Landroidx/media2/exoplayer/external/text/dvb/DvbParser;

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/dvb/DvbDecoder;->decode([BIZ)Landroidx/media2/exoplayer/external/text/dvb/DvbSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Landroidx/media2/exoplayer/external/text/dvb/DvbSubtitle;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z

    .line 50
    if-eqz p3, :cond_0

    .line 51
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbDecoder;->parser:Landroidx/media2/exoplayer/external/text/dvb/DvbParser;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->reset()V

    goto :goto_0

    .line 50
    :cond_0
    nop

    .line 53
    :goto_0
    new-instance v0, Landroidx/media2/exoplayer/external/text/dvb/DvbSubtitle;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbDecoder;->parser:Landroidx/media2/exoplayer/external/text/dvb/DvbParser;

    invoke-virtual {v1, p1, p2}, Landroidx/media2/exoplayer/external/text/dvb/DvbParser;->decode([BI)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/text/dvb/DvbSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method
