.class abstract Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 51
    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .locals 1
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->parsePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V

    goto :goto_0

    .line 70
    :cond_0
    nop

    .line 73
    :goto_0
    return-void
.end method

.method protected abstract parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation
.end method

.method protected abstract parsePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation
.end method

.method public abstract seek()V
.end method
