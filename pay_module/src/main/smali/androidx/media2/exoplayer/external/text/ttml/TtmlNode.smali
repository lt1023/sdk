.class final Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlNode.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final ANONYMOUS_REGION_ID:Ljava/lang/String; = ""

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_TTS_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final ATTR_TTS_COLOR:Ljava/lang/String; = "color"

.field public static final ATTR_TTS_DISPLAY_ALIGN:Ljava/lang/String; = "displayAlign"

.field public static final ATTR_TTS_EXTENT:Ljava/lang/String; = "extent"

.field public static final ATTR_TTS_FONT_FAMILY:Ljava/lang/String; = "fontFamily"

.field public static final ATTR_TTS_FONT_SIZE:Ljava/lang/String; = "fontSize"

.field public static final ATTR_TTS_FONT_STYLE:Ljava/lang/String; = "fontStyle"

.field public static final ATTR_TTS_FONT_WEIGHT:Ljava/lang/String; = "fontWeight"

.field public static final ATTR_TTS_ORIGIN:Ljava/lang/String; = "origin"

.field public static final ATTR_TTS_TEXT_ALIGN:Ljava/lang/String; = "textAlign"

.field public static final ATTR_TTS_TEXT_DECORATION:Ljava/lang/String; = "textDecoration"

.field public static final BOLD:Ljava/lang/String; = "bold"

.field public static final CENTER:Ljava/lang/String; = "center"

.field public static final END:Ljava/lang/String; = "end"

.field public static final ITALIC:Ljava/lang/String; = "italic"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final LINETHROUGH:Ljava/lang/String; = "linethrough"

.field public static final NO_LINETHROUGH:Ljava/lang/String; = "nolinethrough"

.field public static final NO_UNDERLINE:Ljava/lang/String; = "nounderline"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final START:Ljava/lang/String; = "start"

.field public static final TAG_BODY:Ljava/lang/String; = "body"

.field public static final TAG_BR:Ljava/lang/String; = "br"

.field public static final TAG_DATA:Ljava/lang/String; = "data"

.field public static final TAG_DIV:Ljava/lang/String; = "div"

.field public static final TAG_HEAD:Ljava/lang/String; = "head"

.field public static final TAG_IMAGE:Ljava/lang/String; = "image"

.field public static final TAG_INFORMATION:Ljava/lang/String; = "information"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAG_P:Ljava/lang/String; = "p"

.field public static final TAG_REGION:Ljava/lang/String; = "region"

.field public static final TAG_SPAN:Ljava/lang/String; = "span"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final TAG_TT:Ljava/lang/String; = "tt"

.field public static final UNDERLINE:Ljava/lang/String; = "underline"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final endTimeUs:J

.field public final imageId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final isTextNode:Z

.field private final nodeEndsByRegion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeStartsByRegion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final regionId:Ljava/lang/String;

.field public final startTimeUs:J

.field public final style:Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final styleIds:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final tag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media2/exoplayer/external/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "startTimeUs"    # J
    .param p5, "endTimeUs"    # J
    .param p7, "style"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "styleIds"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "regionId"    # Ljava/lang/String;
    .param p10, "imageId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->text:Ljava/lang/String;

    .line 139
    iput-object p10, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    .line 140
    iput-object p7, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->style:Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    .line 141
    iput-object p8, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    .line 142
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->isTextNode:Z

    .line 143
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    .line 144
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->endTimeUs:J

    .line 145
    invoke-static {p9}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    .line 148
    return-void
.end method

.method private applyStyleToOutput(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .param p2, "regionOutput"    # Landroid/text/SpannableStringBuilder;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "II)V"
        }
    .end annotation

    .line 352
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->style:Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlRenderUtil;->resolveStyle(Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;

    move-result-object v0

    .line 353
    .local v0, "resolvedStyle":Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
    if-eqz v0, :cond_0

    .line 354
    invoke-static {p2, p3, p4, v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlRenderUtil;->applyStylesToSpan(Landroid/text/SpannableStringBuilder;IILandroidx/media2/exoplayer/external/text/ttml/TtmlStyle;)V

    goto :goto_0

    .line 353
    :cond_0
    nop

    .line 356
    :goto_0
    return-void
.end method

.method public static buildNode(Ljava/lang/String;JJLandroidx/media2/exoplayer/external/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .locals 12
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "startTimeUs"    # J
    .param p3, "endTimeUs"    # J
    .param p5, "style"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "styleIds"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "regionId"    # Ljava/lang/String;
    .param p8, "imageId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    new-instance v11, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    const/4 v2, 0x0

    move-object v0, v11

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media2/exoplayer/external/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public static buildTextNode(Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;

    .line 105
    new-instance v11, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    .line 107
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlRenderUtil;->applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, ""

    const/4 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media2/exoplayer/external/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v11
.end method

.method private cleanUpText(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;

    .line 361
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 362
    .local v0, "builderLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_3

    .line 363
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_2

    .line 364
    add-int/lit8 v3, v1, 0x1

    .line 365
    .local v3, "j":I
    :goto_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_0

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 365
    :cond_0
    nop

    .line 368
    add-int/lit8 v2, v1, 0x1

    sub-int v2, v3, v2

    .line 369
    .local v2, "spacesToDelete":I
    if-lez v2, :cond_1

    .line 370
    add-int v4, v1, v2

    invoke-virtual {p1, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 371
    sub-int/2addr v0, v2

    goto :goto_2

    .line 369
    :cond_1
    goto :goto_2

    .line 363
    .end local v2    # "spacesToDelete":I
    .end local v3    # "j":I
    :cond_2
    nop

    .line 362
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_4

    .line 377
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 378
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 376
    :cond_4
    nop

    .line 380
    :goto_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0xa

    if-ge v1, v3, :cond_6

    .line 381
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_5

    .line 382
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 383
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 381
    :cond_5
    nop

    .line 380
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 387
    .end local v1    # "i":I
    :cond_6
    if-lez v0, :cond_7

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_7

    .line 388
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 389
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 387
    :cond_7
    nop

    .line 391
    :goto_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_9

    .line 392
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_8

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_8

    .line 393
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 394
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 392
    :cond_8
    nop

    .line 391
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 398
    .end local v1    # "i":I
    :cond_9
    if-lez v0, :cond_a

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_a

    .line 399
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    .line 398
    :cond_a
    nop

    .line 402
    :goto_9
    return-object p1
.end method

.method private getEventTimes(Ljava/util/TreeSet;Z)V
    .locals 7
    .param p2, "descendsPNode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 187
    .local p1, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const-string v0, "p"

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 188
    .local v0, "isPNode":Z
    const-string v1, "div"

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 189
    .local v1, "isDivNode":Z
    if-nez p2, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 190
    :cond_1
    :goto_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 191
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_2
    nop

    .line 193
    :goto_1
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 194
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    :cond_3
    nop

    .line 197
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v2, :cond_4

    .line 198
    return-void

    .line 200
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 201
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    if-nez p2, :cond_6

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v4, 0x1

    :goto_5
    invoke-direct {v3, p1, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 203
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method private static getRegionOutput(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "resolvedRegionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 320
    .local p1, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    :cond_0
    nop

    .line 323
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private traverseForImage(JLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "inheritedRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 269
    .local p4, "regionImageList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, ""

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 270
    .local v0, "resolvedRegionId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->isActive(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "div"

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 271
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void

    .line 270
    :cond_1
    nop

    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 275
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getChild(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    move-result-object v2

    invoke-direct {v2, p1, p2, v0, p4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/List;)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private traverseForStyle(JLjava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local p4, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->isActive(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 334
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    .local v2, "regionId":Ljava/lang/String;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 336
    .local v3, "start":I
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 337
    .local v4, "end":I
    if-eq v3, v4, :cond_2

    .line 338
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/SpannableStringBuilder;

    .line 339
    .local v5, "regionOutput":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, p3, v5, v3, v4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->applyStyleToOutput(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V

    goto :goto_2

    .line 337
    .end local v5    # "regionOutput":Landroid/text/SpannableStringBuilder;
    :cond_2
    nop

    .line 341
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "regionId":Ljava/lang/String;
    .end local v3    # "start":I
    .end local v4    # "end":I
    :goto_2
    goto :goto_0

    .line 342
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 343
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getChild(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    move-result-object v1

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/Map;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 345
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private traverseForText(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "descendsPNode"    # Z
    .param p4, "inheritedRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p5, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 285
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 286
    const-string v0, "metadata"

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    const-string v0, ""

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 293
    .local v0, "resolvedRegionId":Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->isTextNode:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 294
    invoke-static {v0, p5}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getRegionOutput(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_7

    .line 293
    :cond_2
    nop

    .line 295
    const-string v1, "br"

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 296
    invoke-static {v0, p5}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getRegionOutput(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_7

    .line 295
    :cond_3
    nop

    .line 297
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->isActive(J)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 299
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 300
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    goto :goto_1

    .line 303
    :cond_4
    const-string v1, "p"

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 304
    .local v7, "isPNode":Z
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getChildCount()I

    move-result v1

    if-ge v8, v1, :cond_7

    .line 305
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getChild(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    move-result-object v1

    if-nez p3, :cond_6

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_4
    move-wide v2, p1

    move-object v5, v0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 308
    .end local v8    # "i":I
    :cond_7
    if-eqz v7, :cond_8

    .line 309
    invoke-static {v0, p5}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getRegionOutput(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlRenderUtil;->endParagraph(Landroid/text/SpannableStringBuilder;)V

    goto :goto_5

    .line 308
    :cond_8
    nop

    .line 312
    :goto_5
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 313
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    goto :goto_6

    .line 312
    :cond_9
    goto :goto_7

    .line 297
    .end local v7    # "isPNode":Z
    :cond_a
    nop

    .line 316
    :goto_7
    return-void
.end method


# virtual methods
.method public addChild(Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;)V
    .locals 1
    .param p1, "child"    # Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->children:Ljava/util/List;

    goto :goto_0

    .line 158
    :cond_0
    nop

    .line 161
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public getChild(I)Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;
    .locals 1
    .param p1, "index"    # I

    .line 165
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCues(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 27
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;"
        }
    .end annotation

    .line 215
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlStyle;>;"
    .local p4, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;>;"
    .local p5, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 216
    .local v10, "regionImageOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, v6, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v0, v10}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/List;)V

    .line 218
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v11, v0

    .line 219
    .local v11, "regionTextOutputs":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    iget-object v4, v6, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    .line 220
    move-object/from16 v0, p3

    invoke-direct {v6, v7, v8, v0, v11}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/Map;)V

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/Cue;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 226
    .local v3, "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v5, p5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 227
    .local v4, "encodedBitmapData":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 229
    goto :goto_0

    .line 232
    :cond_0
    const/4 v12, 0x0

    invoke-static {v4, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    .line 233
    .local v13, "bitmapData":[B
    array-length v14, v13

    invoke-static {v13, v12, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 234
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    iget-object v14, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;

    .line 236
    .local v14, "region":Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;
    new-instance v15, Landroidx/media2/exoplayer/external/text/Cue;

    iget v0, v14, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->position:F

    const/16 v18, 0x1

    move-object/from16 v23, v2

    iget v2, v14, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->line:F

    move-object/from16 v24, v3

    .end local v3    # "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v24, "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget v3, v14, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->lineAnchor:I

    move-object/from16 v25, v4

    .end local v4    # "encodedBitmapData":Ljava/lang/String;
    .local v25, "encodedBitmapData":Ljava/lang/String;
    iget v4, v14, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->width:F

    const/16 v22, 0x1

    move-object/from16 v26, v15

    move-object/from16 v16, v12

    move/from16 v17, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-direct/range {v15 .. v22}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    move-object/from16 v0, v26

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bitmapData":[B
    .end local v14    # "region":Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;
    .end local v24    # "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "encodedBitmapData":Ljava/lang/String;
    move-object/from16 v2, v23

    move-object/from16 v0, p3

    goto :goto_0

    .line 248
    :cond_1
    move-object/from16 v5, p5

    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 249
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;

    .line 250
    .local v3, "region":Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;
    new-instance v4, Landroidx/media2/exoplayer/external/text/Cue;

    .line 252
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v12}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->cleanUpText(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    iget v15, v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->line:F

    iget v12, v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->lineType:I

    iget v14, v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->lineAnchor:I

    move/from16 v17, v14

    iget v14, v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->position:F

    const/high16 v19, -0x80000000

    move/from16 v18, v14

    iget v14, v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->width:F

    move/from16 v20, v14

    iget v14, v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->textSizeType:I

    move/from16 v21, v14

    iget v14, v3, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->textSize:F

    move/from16 v22, v12

    move-object v12, v4

    move/from16 v23, v14

    const/4 v14, 0x0

    move/from16 v16, v22

    move/from16 v22, v23

    invoke-direct/range {v12 .. v22}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V

    .line 250
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    .end local v3    # "region":Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;
    goto :goto_1

    .line 264
    :cond_2
    return-object v1
.end method

.method public getEventTimesUs()[J
    .locals 7

    .line 176
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 177
    .local v0, "eventTimeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 178
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 179
    .local v1, "eventTimes":[J
    const/4 v2, 0x0

    .line 180
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 181
    .local v4, "eventTimeUs":J
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aput-wide v4, v1, v2

    .line 182
    .end local v4    # "eventTimeUs":J
    move v2, v6

    goto :goto_0

    .line 183
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getStyleIds()[Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    return-object v0
.end method

.method public isActive(J)Z
    .locals 5
    .param p1, "timeUs"    # J

    .line 151
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_2

    :cond_1
    :goto_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v4, v0, p1

    if-gtz v4, :cond_2

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    :cond_2
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    :cond_3
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    goto :goto_0

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method
