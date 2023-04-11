.class Landroidx/media2/player/subtitle/Cea608CCParser;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/subtitle/Cea608CCParser$CCData;,
        Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;,
        Landroidx/media2/player/subtitle/Cea608CCParser$CCLineBuilder;,
        Landroidx/media2/player/subtitle/Cea608CCParser$MutableBackgroundColorSpan;,
        Landroidx/media2/player/subtitle/Cea608CCParser$PAC;,
        Landroidx/media2/player/subtitle/Cea608CCParser$StyleCode;,
        Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;
    }
.end annotation


# static fields
.field private static final AOF:I = 0x22

.field private static final AON:I = 0x23

.field private static final BS:I = 0x21

.field private static final CR:I = 0x2d

.field private static final DEBUG:Z

.field private static final DER:I = 0x24

.field private static final EDM:I = 0x2c

.field private static final ENM:I = 0x2e

.field private static final EOC:I = 0x2f

.field private static final FON:I = 0x28

.field private static final INVALID:I = -0x1

.field public static final MAX_COLS:I = 0x20

.field public static final MAX_ROWS:I = 0xf

.field private static final MODE_PAINT_ON:I = 0x1

.field private static final MODE_POP_ON:I = 0x3

.field private static final MODE_ROLL_UP:I = 0x2

.field private static final MODE_TEXT:I = 0x4

.field private static final MODE_UNKNOWN:I = 0x0

.field private static final RCL:I = 0x20

.field private static final RDC:I = 0x29

.field private static final RTD:I = 0x2b

.field private static final RU2:I = 0x25

.field private static final RU3:I = 0x26

.field private static final RU4:I = 0x27

.field private static final TAG:Ljava/lang/String; = "Cea608CCParser"

.field private static final TR:I = 0x2a

.field private static final TS:C = '\u00a0'


# instance fields
.field private mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

.field private final mListener:Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;

.field private mMode:I

.field private mNonDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

.field private mPrevCtrlCode:I

.field private mRollUpSize:I

.field private mTextMem:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "Cea608CCParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/player/subtitle/Cea608CCParser;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    .line 79
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mRollUpSize:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mPrevCtrlCode:I

    .line 82
    new-instance v0, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    .line 83
    new-instance v0, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mNonDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    .line 84
    new-instance v0, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mTextMem:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    .line 87
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mListener:Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;

    .line 88
    return-void
.end method

.method private getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;
    .locals 3

    .line 116
    iget v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 127
    const-string v0, "Cea608CCParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecoginized mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    return-object v0

    .line 122
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mTextMem:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    return-object v0

    .line 118
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mNonDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    return-object v0

    .line 125
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCtrlCode(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z
    .locals 6
    .param p1, "ccData"    # Landroidx/media2/player/subtitle/Cea608CCParser$CCData;

    .line 186
    invoke-virtual {p1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    .line 188
    .local v0, "ctrlCode":I
    iget v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mPrevCtrlCode:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-ne v1, v0, :cond_0

    .line 190
    iput v3, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mPrevCtrlCode:I

    .line 191
    return v2

    .line 188
    :cond_0
    nop

    .line 194
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    .line 259
    :pswitch_0
    iput v3, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mPrevCtrlCode:I

    .line 260
    const/4 v1, 0x0

    return v1

    .line 252
    :pswitch_1
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->swapMemory()V

    .line 254
    iput v4, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    .line 255
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->updateDisplay()V

    .line 256
    goto/16 :goto_2

    .line 248
    :pswitch_2
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mNonDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->erase()V

    .line 249
    goto/16 :goto_2

    .line 237
    :pswitch_3
    iget v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    if-ne v1, v5, :cond_1

    .line 238
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v1

    iget v3, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mRollUpSize:I

    invoke-virtual {v1, v3}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->rollUp(I)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->cr()V

    .line 242
    :goto_0
    iget v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    if-ne v1, v5, :cond_2

    .line 243
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->updateDisplay()V

    goto :goto_2

    .line 242
    :cond_2
    goto :goto_2

    .line 233
    :pswitch_4
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->erase()V

    .line 234
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->updateDisplay()V

    .line 235
    goto :goto_2

    .line 229
    :pswitch_5
    iput v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    .line 230
    goto :goto_2

    .line 225
    :pswitch_6
    iput v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    .line 226
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mTextMem:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->erase()V

    .line 227
    goto :goto_2

    .line 222
    :pswitch_7
    iput v2, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    .line 223
    goto :goto_2

    .line 218
    :pswitch_8
    const-string v1, "Cea608CCParser"

    const-string v3, "Flash On"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    goto :goto_2

    .line 208
    :pswitch_9
    add-int/lit8 v1, v0, -0x23

    iput v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mRollUpSize:I

    .line 210
    iget v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    if-eq v1, v5, :cond_3

    .line 211
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->erase()V

    .line 212
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mNonDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->erase()V

    goto :goto_1

    .line 210
    :cond_3
    nop

    .line 215
    :goto_1
    iput v5, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    .line 216
    goto :goto_2

    .line 203
    :pswitch_a
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->der()V

    .line 204
    goto :goto_2

    .line 200
    :pswitch_b
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->bs()V

    .line 201
    goto :goto_2

    .line 197
    :pswitch_c
    iput v4, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    .line 198
    nop

    .line 263
    :goto_2
    iput v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mPrevCtrlCode:I

    .line 266
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleDisplayableChars(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z
    .locals 3
    .param p1, "ccData"    # Landroidx/media2/player/subtitle/Cea608CCParser$CCData;

    .line 133
    invoke-virtual {p1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->bs()V

    goto :goto_0

    .line 138
    :cond_1
    nop

    .line 142
    :goto_0
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 145
    :cond_3
    :goto_1
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->updateDisplay()V

    .line 148
    :goto_2
    return v1
.end method

.method private handleMidRowCode(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z
    .locals 2
    .param p1, "ccData"    # Landroidx/media2/player/subtitle/Cea608CCParser$CCData;

    .line 152
    invoke-virtual {p1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->getMidRow()Landroidx/media2/player/subtitle/Cea608CCParser$StyleCode;

    move-result-object v0

    .line 153
    .local v0, "m":Landroidx/media2/player/subtitle/Cea608CCParser$StyleCode;
    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->writeMidRowCode(Landroidx/media2/player/subtitle/Cea608CCParser$StyleCode;)V

    .line 155
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handlePACCode(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z
    .locals 4
    .param p1, "ccData"    # Landroidx/media2/player/subtitle/Cea608CCParser$CCData;

    .line 161
    invoke-virtual {p1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->getPAC()Landroidx/media2/player/subtitle/Cea608CCParser$PAC;

    move-result-object v0

    .line 163
    .local v0, "pac":Landroidx/media2/player/subtitle/Cea608CCParser$PAC;
    if-eqz v0, :cond_1

    .line 164
    iget v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 165
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/Cea608CCParser$PAC;->getRow()I

    move-result v2

    iget v3, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mRollUpSize:I

    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->moveBaselineTo(II)V

    goto :goto_0

    .line 164
    :cond_0
    nop

    .line 167
    :goto_0
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->writePAC(Landroidx/media2/player/subtitle/Cea608CCParser$PAC;)V

    .line 168
    const/4 v1, 0x1

    return v1

    .line 171
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private handleTabOffsets(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z
    .locals 2
    .param p1, "ccData"    # Landroidx/media2/player/subtitle/Cea608CCParser$CCData;

    .line 175
    invoke-virtual {p1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->getTabOffset()I

    move-result v0

    .line 177
    .local v0, "tabs":I
    if-lez v0, :cond_0

    .line 178
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea608CCParser;->getMemory()Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->tab(I)V

    .line 179
    const/4 v1, 0x1

    return v1

    .line 182
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private swapMemory()V
    .locals 2

    .line 277
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    .line 278
    .local v0, "temp":Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mNonDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    iput-object v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    .line 279
    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mNonDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    .line 280
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 270
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mListener:Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 272
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mListener:Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;

    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea608CCParser;->mDisplay:Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;

    invoke-virtual {v2, v0}, Landroidx/media2/player/subtitle/Cea608CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 270
    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_0
    nop

    .line 274
    :goto_0
    return-void
.end method


# virtual methods
.method public parse([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 91
    invoke-static {p1}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->fromByteArray([B)[Landroidx/media2/player/subtitle/Cea608CCParser$CCData;

    move-result-object v0

    .line 93
    .local v0, "ccData":[Landroidx/media2/player/subtitle/Cea608CCParser$CCData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 94
    sget-boolean v2, Landroidx/media2/player/subtitle/Cea608CCParser;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "Cea608CCParser"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroidx/media2/player/subtitle/Cea608CCParser$CCData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :cond_0
    nop

    .line 98
    :goto_1
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroidx/media2/player/subtitle/Cea608CCParser;->handleCtrlCode(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, v0, v1

    .line 99
    invoke-direct {p0, v2}, Landroidx/media2/player/subtitle/Cea608CCParser;->handleTabOffsets(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v0, v1

    .line 100
    invoke-direct {p0, v2}, Landroidx/media2/player/subtitle/Cea608CCParser;->handlePACCode(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v1

    .line 101
    invoke-direct {p0, v2}, Landroidx/media2/player/subtitle/Cea608CCParser;->handleMidRowCode(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    goto :goto_2

    .line 105
    :cond_1
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroidx/media2/player/subtitle/Cea608CCParser;->handleDisplayableChars(Landroidx/media2/player/subtitle/Cea608CCParser$CCData;)Z

    goto :goto_2

    .line 100
    :cond_2
    goto :goto_2

    .line 99
    :cond_3
    goto :goto_2

    .line 98
    :cond_4
    nop

    .line 93
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
