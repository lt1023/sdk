.class public Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
.super Ljava/lang/Object;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebvttCueBuilder"


# instance fields
.field private endTime:J

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private position:F

.field private positionAnchor:I

.field private startTime:J

.field private text:Landroid/text/SpannableStringBuilder;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->reset()V

    .line 87
    return-void
.end method

.method private derivePositionAnchorFromAlignment()Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 5

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    .line 164
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    .line 166
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$1;->$SwitchMap$android$text$Layout$Alignment:[I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 177
    const-string v0, "WebvttCueBuilder"

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized alignment: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    .line 174
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 175
    goto :goto_0

    .line 171
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 172
    goto :goto_0

    .line 168
    :pswitch_2
    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 169
    nop

    .line 182
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;
    .locals 15

    .line 105
    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->position:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->derivePositionAnchorFromAlignment()Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;

    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 108
    :goto_0
    new-instance v0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->startTime:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->endTime:J

    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->text:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget v9, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->line:F

    iget v10, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->lineType:I

    iget v11, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    iget v12, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->position:F

    iget v13, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    iget v14, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->width:F

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->startTime:J

    .line 91
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->endTime:J

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->text:Landroid/text/SpannableStringBuilder;

    .line 93
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->line:F

    .line 95
    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->lineType:I

    .line 96
    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    .line 97
    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->position:F

    .line 98
    iput v1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 99
    iput v0, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->width:F

    .line 100
    return-void
.end method

.method public setEndTime(J)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "time"    # J

    .line 118
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->endTime:J

    .line 119
    return-object p0
.end method

.method public setLine(F)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "line"    # F

    .line 133
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->line:F

    .line 134
    return-object p0
.end method

.method public setLineAnchor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "lineAnchor"    # I

    .line 143
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    .line 144
    return-object p0
.end method

.method public setLineType(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "lineType"    # I

    .line 138
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->lineType:I

    .line 139
    return-object p0
.end method

.method public setPosition(F)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "position"    # F

    .line 148
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->position:F

    .line 149
    return-object p0
.end method

.method public setPositionAnchor(I)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "positionAnchor"    # I

    .line 153
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 154
    return-object p0
.end method

.method public setStartTime(J)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "time"    # J

    .line 113
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->startTime:J

    .line 114
    return-object p0
.end method

.method public setText(Landroid/text/SpannableStringBuilder;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "aText"    # Landroid/text/SpannableStringBuilder;

    .line 123
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->text:Landroid/text/SpannableStringBuilder;

    .line 124
    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .line 128
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 129
    return-object p0
.end method

.method public setWidth(F)Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "width"    # F

    .line 158
    iput p1, p0, Landroidx/media2/exoplayer/external/text/webvtt/WebvttCue$Builder;->width:F

    .line 159
    return-object p0
.end method
