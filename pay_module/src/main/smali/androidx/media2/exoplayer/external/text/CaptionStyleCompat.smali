.class public final Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/CaptionStyleCompat$EdgeType;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final USE_TRACK_COLOR_SETTINGS:I = 0x1


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field public final typeface:Landroid/graphics/Typeface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 83
    new-instance v7, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->DEFAULT:Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "windowColor"    # I
    .param p4, "edgeType"    # I
    .param p5, "edgeColor"    # I
    .param p6, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->foregroundColor:I

    .line 161
    iput p2, p0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->backgroundColor:I

    .line 162
    iput p3, p0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->windowColor:I

    .line 163
    iput p4, p0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->edgeType:I

    .line 164
    iput p5, p0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->edgeColor:I

    .line 165
    iput-object p6, p0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    .line 166
    return-void
.end method

.method public static createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;
    .locals 2
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 136
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 137
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    move-result-object v0

    return-object v0
.end method

.method private static createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;
    .locals 8
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 172
    new-instance v7, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 174
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 172
    return-object v7
.end method

.method private static createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;
    .locals 8
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 181
    new-instance v7, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    .line 182
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->DEFAULT:Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->foregroundColor:I

    :goto_0
    move v1, v0

    .line 183
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->DEFAULT:Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->backgroundColor:I

    :goto_1
    move v2, v0

    .line 184
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->DEFAULT:Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->windowColor:I

    :goto_2
    move v3, v0

    .line 185
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_3

    :cond_3
    sget-object v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->DEFAULT:Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->edgeType:I

    :goto_3
    move v4, v0

    .line 186
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_4

    :cond_4
    sget-object v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->DEFAULT:Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;->edgeColor:I

    :goto_4
    move v5, v0

    .line 187
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 181
    return-object v7
.end method
