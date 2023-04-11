.class final Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;",
        ">;"
    }
.end annotation


# instance fields
.field public final score:I

.field public final style:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;


# direct methods
.method public constructor <init>(ILandroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;)V
    .locals 0
    .param p1, "score"    # I
    .param p2, "style"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    .line 489
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    .line 490
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;)I
    .locals 2
    .param p1, "another"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 494
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    iget v1, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 482
    check-cast p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;->compareTo(Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StyleMatch;)I

    move-result p1

    return p1
.end method
