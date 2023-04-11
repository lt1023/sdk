.class final Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartTag"
.end annotation


# static fields
.field private static final NO_CLASSES:[Ljava/lang/String;


# instance fields
.field public final classes:[Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final position:I

.field public final voice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 501
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->NO_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "voice"    # Ljava/lang/String;
    .param p4, "classes"    # [Ljava/lang/String;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput p2, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 510
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    .line 511
    iput-object p3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    .line 512
    iput-object p4, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->classes:[Ljava/lang/String;

    .line 513
    return-void
.end method

.method public static buildStartTag(Ljava/lang/String;I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;
    .locals 6
    .param p0, "fullTagExpression"    # Ljava/lang/String;
    .param p1, "position"    # I

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 517
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x0

    return-object v0

    .line 520
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 522
    .local v0, "voiceStartIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 523
    const-string v1, ""

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "voice":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 528
    :goto_0
    const-string v3, "\\."

    invoke-static {p0, v3}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "nameAndClasses":[Ljava/lang/String;
    aget-object v2, v3, v2

    .line 531
    .local v2, "name":Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 532
    array-length v4, v3

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_1

    .line 534
    :cond_2
    sget-object v4, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;->NO_CLASSES:[Ljava/lang/String;

    .line 536
    .local v4, "classes":[Ljava/lang/String;
    :goto_1
    new-instance v5, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;

    invoke-direct {v5, v2, p1, v1, v4}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v5
.end method

.method public static buildWholeCueVirtualTag()Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;
    .locals 5

    .line 540
    new-instance v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2, v4}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
