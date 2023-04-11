.class public final Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle$OptionalBoolean;,
        Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private italic:I

.field private linethrough:I

.field private targetClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/String;

.field private targetTag:Ljava/lang/String;

.field private targetVoice:Ljava/lang/String;

.field private textAlign:Landroid/text/Layout$Alignment;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->reset()V

    .line 104
    return-void
.end method

.method private static updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "currentScore"    # I
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;
    .param p3, "score"    # I

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int v0, p0, p3

    nop

    :cond_1
    return v0

    .line 320
    :cond_2
    :goto_0
    nop

    .line 321
    return p0
.end method


# virtual methods
.method public cascadeFrom(Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;)V
    .locals 2
    .param p1, "style"    # Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    .line 288
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    .line 289
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontColor:I

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setFontColor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    goto :goto_0

    .line 288
    :cond_0
    nop

    .line 291
    :goto_0
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 292
    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->bold:I

    goto :goto_1

    .line 291
    :cond_1
    nop

    .line 294
    :goto_1
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->italic:I

    if-eq v0, v1, :cond_2

    .line 295
    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->italic:I

    goto :goto_2

    .line 294
    :cond_2
    nop

    .line 297
    :goto_2
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 298
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    goto :goto_3

    .line 297
    :cond_3
    nop

    .line 300
    :goto_3
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->linethrough:I

    if-ne v0, v1, :cond_4

    .line 301
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->linethrough:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->linethrough:I

    goto :goto_4

    .line 300
    :cond_4
    nop

    .line 303
    :goto_4
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->underline:I

    if-ne v0, v1, :cond_5

    .line 304
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->underline:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->underline:I

    goto :goto_5

    .line 303
    :cond_5
    nop

    .line 306
    :goto_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 307
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    goto :goto_6

    .line 306
    :cond_6
    nop

    .line 309
    :goto_6
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_7

    .line 310
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 311
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSize:F

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSize:F

    goto :goto_7

    .line 309
    :cond_7
    nop

    .line 313
    :goto_7
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_8

    .line 314
    iget v0, p1, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;

    goto :goto_8

    .line 313
    :cond_8
    nop

    .line 316
    :goto_8
    return-void
.end method

.method public getBackgroundColor()I
    .locals 2

    .line 244
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_0

    .line 247
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->backgroundColor:I

    return v0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontColor()I
    .locals 2

    .line 227
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontColor:I

    return v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 284
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .locals 1

    .line 280
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return v0
.end method

.method public getSpecificityScore(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "classes"    # [Ljava/lang/String;
    .param p4, "voice"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0

    .line 159
    :cond_0
    goto :goto_0

    .line 158
    :cond_1
    nop

    .line 164
    :goto_0
    const/4 v0, 0x0

    .line 165
    .local v0, "score":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, p1, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 166
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, p2, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 167
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, p4, v2}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 168
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 173
    return v0

    .line 168
    :cond_3
    :goto_1
    nop

    .line 169
    const/4 v1, 0x0

    return v1
.end method

.method public getStyle()I
    .locals 4

    .line 183
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v0, v1, :cond_0

    .line 184
    return v1

    .line 183
    :cond_0
    nop

    .line 186
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 187
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    nop

    :cond_2
    or-int/2addr v0, v1

    .line 186
    return v0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return v0
.end method

.method public isLinethrough()Z
    .locals 2

    .line 191
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->linethrough:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnderline()Z
    .locals 2

    .line 200
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 2

    .line 107
    const-string v0, ""

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 113
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 115
    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->underline:I

    .line 116
    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->bold:I

    .line 117
    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->italic:I

    .line 118
    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 119
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 120
    return-void
.end method

.method public setBackgroundColor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "backgroundColor"    # I

    .line 251
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->backgroundColor:I

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 253
    return-object p0
.end method

.method public setBold(Z)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "bold"    # Z

    .line 208
    nop

    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->bold:I

    .line 209
    nop

    return-object p0
.end method

.method public setFontColor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "color"    # I

    .line 234
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontColor:I

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 236
    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .line 222
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public setFontSize(F)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "fontSize"    # F

    .line 270
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSize:F

    .line 271
    return-object p0
.end method

.method public setFontSizeUnit(S)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "unit"    # S

    .line 275
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 276
    return-object p0
.end method

.method public setItalic(Z)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "italic"    # Z

    .line 213
    nop

    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->italic:I

    .line 214
    nop

    return-object p0
.end method

.method public setLinethrough(Z)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "linethrough"    # Z

    .line 195
    nop

    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 196
    nop

    return-object p0
.end method

.method public setTargetClasses([Ljava/lang/String;)V
    .locals 1
    .param p1, "targetClasses"    # [Ljava/lang/String;

    .line 131
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    .line 132
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setTargetTagName(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetTag"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTargetVoice(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetVoice"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "textAlign"    # Landroid/text/Layout$Alignment;

    .line 265
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 266
    return-object p0
.end method

.method public setUnderline(Z)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;
    .locals 0
    .param p1, "underline"    # Z

    .line 204
    nop

    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCssStyle;->underline:I

    .line 205
    nop

    return-object p0
.end method
