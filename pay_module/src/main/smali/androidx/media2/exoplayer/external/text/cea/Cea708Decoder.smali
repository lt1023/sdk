.class public final Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;
.super Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;,
        Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF4:I = 0x9c

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final ccData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

.field private currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedServiceNumber:I

.field private final serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 4
    .param p1, "accessibilityChannel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 161
    .local p2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;-><init>()V

    .line 162
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->ccData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 163
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 164
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 166
    const/16 v0, 0x8

    new-array v1, v0, [Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 168
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    new-instance v3, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;-><init>()V

    aput-object v3, v2, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    .line 172
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 173
    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->processCurrentPacket()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    .line 264
    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;"
        }
    .end annotation

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v0, "displayCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 750
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->build()Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 750
    :cond_0
    nop

    .line 749
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 755
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private handleC0Command(I)V
    .locals 4
    .param p1, "command"    # I

    .line 347
    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 367
    const/16 v1, 0x11

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    .line 368
    const-string v1, "Cea708Decoder"

    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 367
    :cond_0
    nop

    .line 370
    const/16 v0, 0x18

    const/16 v1, 0x1f

    if-lt p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    .line 371
    const-string v0, "Cea708Decoder"

    const/16 v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 370
    :cond_1
    nop

    .line 374
    const-string v0, "Cea708Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid C0 command: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :pswitch_0
    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 362
    goto :goto_0

    .line 358
    :pswitch_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 359
    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->backspace()V

    .line 356
    goto :goto_0

    .line 352
    :cond_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 353
    goto :goto_0

    .line 350
    :cond_4
    nop

    .line 377
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleC1Command(I)V
    .locals 5
    .param p1, "command"    # I

    .line 381
    const/16 v0, 0x10

    const/4 v1, 0x1

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 491
    const-string v0, "Cea708Decoder"

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid C1 command: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 482
    :pswitch_0
    add-int/lit16 v0, p1, -0x98

    .line 483
    .local v0, "window":I
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 485
    iget v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v0, :cond_0

    .line 486
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentWindow:I

    .line 487
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v1, v0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    goto/16 :goto_a

    .line 485
    :cond_0
    goto/16 :goto_a

    .line 467
    .end local v0    # "window":I
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_a

    .line 471
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    .line 473
    goto/16 :goto_a

    .line 459
    :pswitch_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v1

    if-nez v1, :cond_2

    .line 461
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_a

    .line 463
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleSetPenLocation()V

    .line 465
    goto/16 :goto_a

    .line 451
    :pswitch_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v0

    if-nez v0, :cond_3

    .line 453
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_a

    .line 455
    :cond_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleSetPenColor()V

    .line 457
    goto/16 :goto_a

    .line 443
    :pswitch_4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    move-result v1

    if-nez v1, :cond_4

    .line 445
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_a

    .line 447
    :cond_4
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    .line 449
    goto/16 :goto_a

    .line 440
    :pswitch_5
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 441
    goto/16 :goto_a

    .line 438
    :pswitch_6
    goto/16 :goto_a

    .line 434
    :pswitch_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 435
    goto/16 :goto_a

    .line 426
    :pswitch_8
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_6

    .line 427
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 428
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->reset()V

    goto :goto_1

    .line 427
    :cond_5
    nop

    .line 426
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "i":I
    :cond_6
    goto/16 :goto_a

    .line 418
    :pswitch_9
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    if-gt v0, v2, :cond_8

    .line 419
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 420
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v4, v0, 0x8

    aget-object v3, v3, v4

    .line 421
    .local v3, "cueBuilder":Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    goto :goto_3

    .line 419
    .end local v3    # "cueBuilder":Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;
    :cond_7
    nop

    .line 418
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 424
    .end local v0    # "i":I
    :cond_8
    goto :goto_a

    .line 411
    :pswitch_a
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_4
    if-gt v0, v2, :cond_a

    .line 412
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 413
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    goto :goto_5

    .line 412
    :cond_9
    nop

    .line 411
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 416
    .end local v0    # "i":I
    :cond_a
    goto :goto_a

    .line 404
    :pswitch_b
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_6
    if-gt v0, v2, :cond_c

    .line 405
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 406
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v4, v0, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    goto :goto_7

    .line 405
    :cond_b
    nop

    .line 404
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 409
    .end local v0    # "i":I
    :cond_c
    goto :goto_a

    .line 397
    :pswitch_c
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_8
    if-gt v0, v2, :cond_e

    .line 398
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 399
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, v0, 0x8

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->clear()V

    goto :goto_9

    .line 398
    :cond_d
    nop

    .line 397
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 402
    .end local v0    # "i":I
    :cond_e
    goto :goto_a

    .line 390
    :pswitch_d
    add-int/lit8 v0, p1, -0x80

    .line 391
    .local v0, "window":I
    iget v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v0, :cond_f

    .line 392
    iput v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentWindow:I

    .line 393
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v1, v0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    goto :goto_a

    .line 391
    :cond_f
    nop

    .line 493
    .end local v0    # "window":I
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x97
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .locals 2
    .param p1, "command"    # I

    .line 497
    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 500
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 501
    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    .line 502
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 503
    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 504
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 503
    :cond_3
    nop

    .line 506
    :goto_0
    return-void
.end method

.method private handleC3Command(I)V
    .locals 3
    .param p1, "command"    # I

    .line 510
    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 511
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 512
    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 513
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 514
    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 518
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 519
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 520
    .local v0, "length":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    mul-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 514
    .end local v0    # "length":I
    :cond_2
    nop

    .line 522
    :goto_0
    return-void
.end method

.method private handleDefineWindow(I)V
    .locals 27
    .param p1, "window"    # I

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v1, p1

    .line 722
    .local v1, "cueBuilder":Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 723
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v15

    .line 724
    .local v15, "visible":Z
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v16

    .line 725
    .local v16, "rowLock":Z
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v17

    .line 726
    .local v17, "columnLock":Z
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 728
    .local v18, "priority":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v19

    .line 729
    .local v19, "relativePositioning":Z
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 731
    .local v20, "verticalAnchor":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 733
    .local v21, "horizontalAnchor":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v22

    .line 734
    .local v22, "anchorId":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v23

    .line 736
    .local v23, "rowCount":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 737
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v24

    .line 739
    .local v24, "columnCount":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 740
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 741
    .local v25, "windowStyle":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 743
    .local v26, "penStyle":I
    move-object v2, v1

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v22

    move/from16 v13, v25

    move/from16 v14, v26

    invoke-virtual/range {v2 .. v14}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->defineWindow(ZZZIZIIIIIII)V

    .line 745
    return-void
.end method

.method private handleG0Character(I)V
    .locals 2
    .param p1, "characterCode"    # I

    .line 525
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 526
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x266b

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 530
    :goto_0
    return-void
.end method

.method private handleG1Character(I)V
    .locals 2
    .param p1, "characterCode"    # I

    .line 533
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 534
    return-void
.end method

.method private handleG2Character(I)V
    .locals 3
    .param p1, "characterCode"    # I

    .line 537
    const/16 v0, 0x25

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    .line 617
    const-string v0, "Cea708Decoder"

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid G2 character: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x250c

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 615
    goto/16 :goto_0

    .line 611
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2518

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 612
    goto/16 :goto_0

    .line 608
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 609
    goto/16 :goto_0

    .line 605
    :pswitch_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2514

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 606
    goto/16 :goto_0

    .line 602
    :pswitch_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2510

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 603
    goto/16 :goto_0

    .line 599
    :pswitch_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2502

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 600
    goto/16 :goto_0

    .line 596
    :pswitch_6
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x215e

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 597
    goto/16 :goto_0

    .line 593
    :pswitch_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x215d

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 594
    goto/16 :goto_0

    .line 590
    :pswitch_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x215c

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 591
    goto/16 :goto_0

    .line 587
    :pswitch_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x215b

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 588
    goto/16 :goto_0

    .line 581
    :pswitch_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2120

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 582
    goto/16 :goto_0

    .line 578
    :pswitch_b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x153

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 579
    goto/16 :goto_0

    .line 575
    :pswitch_c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x161

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 576
    goto/16 :goto_0

    .line 572
    :pswitch_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2122

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 573
    goto :goto_0

    .line 569
    :pswitch_e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2022

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 570
    goto :goto_0

    .line 566
    :pswitch_f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x201d

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 567
    goto :goto_0

    .line 563
    :pswitch_10
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x201c

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 564
    goto :goto_0

    .line 560
    :pswitch_11
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2019

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 561
    goto :goto_0

    .line 557
    :pswitch_12
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2018

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 558
    goto :goto_0

    .line 554
    :pswitch_13
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2588

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 555
    goto :goto_0

    .line 542
    :pswitch_14
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 543
    goto :goto_0

    .line 539
    :pswitch_15
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 540
    goto :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x178

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 585
    goto :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x152

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 552
    goto :goto_0

    .line 548
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x160

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 549
    goto :goto_0

    .line 545
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 546
    nop

    .line 621
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleG3Character(I)V
    .locals 3
    .param p1, "characterCode"    # I

    .line 624
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 625
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x33c4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    goto :goto_0

    .line 627
    :cond_0
    const-string v0, "Cea708Decoder"

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 631
    :goto_0
    return-void
.end method

.method private handleSetPenAttributes()V
    .locals 15

    .line 636
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 637
    .local v0, "textTag":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 638
    .local v1, "offset":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 640
    .local v10, "penSize":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 641
    .local v11, "italicsToggle":Z
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 642
    .local v12, "underlineToggle":Z
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 643
    .local v13, "edgeType":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 645
    .local v14, "fontStyle":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    move v3, v0

    move v4, v1

    move v5, v10

    move v6, v11

    move v7, v12

    move v8, v13

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setPenAttributes(IIIZZII)V

    .line 647
    return-void
.end method

.method private handleSetPenColor()V
    .locals 15

    .line 652
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 653
    .local v0, "foregroundO":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 654
    .local v2, "foregroundR":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 655
    .local v3, "foregroundG":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 656
    .local v4, "foregroundB":I
    invoke-static {v2, v3, v4, v0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v5

    .line 659
    .local v5, "foregroundColor":I
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 660
    .local v6, "backgroundO":I
    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v7, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 661
    .local v7, "backgroundR":I
    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v8, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 662
    .local v8, "backgroundG":I
    iget-object v9, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v9, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 663
    .local v9, "backgroundB":I
    invoke-static {v7, v8, v9, v6}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v10

    .line 666
    .local v10, "backgroundColor":I
    iget-object v11, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v11, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 667
    iget-object v11, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v11, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 668
    .local v11, "edgeR":I
    iget-object v12, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v12, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 669
    .local v12, "edgeG":I
    iget-object v13, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v13, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 670
    .local v1, "edgeB":I
    invoke-static {v11, v12, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    move-result v13

    .line 672
    .local v13, "edgeColor":I
    iget-object v14, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v14, v5, v10, v13}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setPenColor(III)V

    .line 673
    return-void
.end method

.method private handleSetPenLocation()V
    .locals 3

    .line 678
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 679
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 681
    .local v0, "row":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 682
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 684
    .local v1, "column":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v2, v0, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setPenLocation(II)V

    .line 685
    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 23

    .line 690
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 691
    .local v1, "fillO":I
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 692
    .local v3, "fillR":I
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 693
    .local v4, "fillG":I
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 694
    .local v5, "fillB":I
    invoke-static {v3, v4, v5, v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v14

    .line 696
    .local v14, "fillColor":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 697
    .local v6, "borderType":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 698
    .local v15, "borderR":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 699
    .local v13, "borderG":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 700
    .local v12, "borderB":I
    invoke-static {v15, v13, v12}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    move-result v16

    .line 702
    .local v16, "borderColor":I
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 703
    or-int/lit8 v6, v6, 0x4

    move/from16 v17, v6

    goto :goto_0

    .line 702
    :cond_0
    move/from16 v17, v6

    .line 705
    .end local v6    # "borderType":I
    .local v17, "borderType":I
    :goto_0
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v18

    .line 706
    .local v18, "wordWrapToggle":Z
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 707
    .local v19, "printDirection":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 708
    .local v20, "scrollDirection":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 711
    .local v2, "justification":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 713
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    move v7, v14

    move/from16 v8, v16

    move/from16 v9, v18

    move/from16 v10, v17

    move/from16 v11, v19

    move/from16 v21, v12

    .end local v12    # "borderB":I
    .local v21, "borderB":I
    move/from16 v12, v20

    move/from16 v22, v13

    .end local v13    # "borderG":I
    .local v22, "borderG":I
    move v13, v2

    invoke-virtual/range {v6 .. v13}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->setWindowAttributes(IIZIIII)V

    .line 715
    return-void
.end method

.method private processCurrentPacket()V
    .locals 10

    .line 267
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 268
    const-string v0, "Cea708Decoder"

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v2, v2, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v3, v3, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    const/16 v4, 0x83

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "); ignoring packet"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v3, v3, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([BI)V

    .line 276
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 277
    .local v0, "serviceNumber":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 278
    .local v1, "blockSize":I
    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 280
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 281
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 282
    if-ge v0, v3, :cond_1

    .line 283
    const-string v2, "Cea708Decoder"

    const/16 v3, 0x2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid extended service number: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_1
    goto :goto_0

    .line 278
    :cond_2
    nop

    .line 288
    :goto_0
    if-nez v1, :cond_4

    .line 289
    if-eqz v0, :cond_3

    .line 290
    const-string v2, "Cea708Decoder"

    const/16 v3, 0x3b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "serviceNumber is non-zero ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when blockSize is 0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_3
    nop

    .line 292
    :goto_1
    return-void

    .line 295
    :cond_4
    iget v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v0, v2, :cond_5

    .line 296
    return-void

    .line 302
    :cond_5
    const/4 v2, 0x0

    .line 304
    .local v2, "cuesNeedUpdate":Z
    :goto_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    if-lez v3, :cond_f

    .line 305
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 306
    .local v3, "command":I
    const/16 v5, 0x10

    const/16 v6, 0xff

    const/16 v7, 0x9f

    const/16 v8, 0x7f

    const/16 v9, 0x1f

    if-eq v3, v5, :cond_a

    .line 307
    if-gt v3, v9, :cond_6

    .line 308
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto/16 :goto_3

    .line 310
    :cond_6
    if-gt v3, v8, :cond_7

    .line 311
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleG0Character(I)V

    .line 312
    const/4 v2, 0x1

    goto :goto_3

    .line 313
    :cond_7
    if-gt v3, v7, :cond_8

    .line 314
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleC1Command(I)V

    .line 315
    const/4 v2, 0x1

    goto :goto_3

    .line 316
    :cond_8
    if-gt v3, v6, :cond_9

    .line 317
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleG1Character(I)V

    .line 318
    const/4 v2, 0x1

    goto :goto_3

    .line 320
    :cond_9
    const-string v4, "Cea708Decoder"

    const/16 v5, 0x21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid base command: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 324
    :cond_a
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->serviceBlockPacket:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 325
    if-gt v3, v9, :cond_b

    .line 326
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_3

    .line 327
    :cond_b
    if-gt v3, v8, :cond_c

    .line 328
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleG2Character(I)V

    .line 329
    const/4 v2, 0x1

    goto :goto_3

    .line 330
    :cond_c
    if-gt v3, v7, :cond_d

    .line 331
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_3

    .line 332
    :cond_d
    if-gt v3, v6, :cond_e

    .line 333
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->handleG3Character(I)V

    .line 334
    const/4 v2, 0x1

    goto :goto_3

    .line 336
    :cond_e
    const-string v4, "Cea708Decoder"

    const/16 v5, 0x25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid extended command: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v3    # "command":I
    :goto_3
    goto/16 :goto_2

    .line 341
    :cond_f
    if-eqz v2, :cond_10

    .line 342
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    goto :goto_4

    .line 341
    :cond_10
    nop

    .line 344
    :goto_4
    return-void
.end method

.method private resetCueBuilders()V
    .locals 2

    .line 759
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 760
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected createSubtitle()Landroidx/media2/exoplayer/external/text/Subtitle;
    .locals 2

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 199
    new-instance v1, Landroidx/media2/exoplayer/external/text/cea/CeaSubtitle;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected decode(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;)V
    .locals 14
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    .line 206
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 207
    .local v0, "inputBufferData":[B
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->ccData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 208
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->ccData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_8

    .line 209
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->ccData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 211
    .local v1, "ccTypeAndValid":I
    and-int/lit8 v3, v1, 0x3

    .line 212
    .local v3, "ccType":I
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 213
    .local v4, "ccValid":Z
    :goto_1
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->ccData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    .line 214
    .local v6, "ccData1":B
    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->ccData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    int-to-byte v8, v8

    .line 217
    .local v8, "ccData2":B
    const/4 v9, 0x2

    if-eq v3, v9, :cond_1

    if-eq v3, v2, :cond_1

    .line 218
    goto :goto_0

    .line 217
    :cond_1
    nop

    .line 221
    if-nez v4, :cond_2

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    if-ne v3, v2, :cond_4

    .line 227
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 229
    and-int/lit16 v2, v6, 0xc0

    shr-int/lit8 v2, v2, 0x6

    .line 230
    .local v2, "sequenceNumber":I
    and-int/lit8 v5, v6, 0x3f

    .line 231
    .local v5, "packetSize":I
    if-nez v5, :cond_3

    .line 232
    const/16 v5, 0x40

    goto :goto_2

    .line 231
    :cond_3
    nop

    .line 235
    :goto_2
    new-instance v10, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v10, v2, v5}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v10, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    .line 236
    iget-object v10, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v11, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v12, v11, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v11, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v8, v10, v12

    .line 237
    .end local v2    # "sequenceNumber":I
    .end local v5    # "packetSize":I
    goto :goto_3

    .line 239
    :cond_4
    if-ne v3, v9, :cond_5

    const/4 v5, 0x1

    nop

    :cond_5
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 241
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v2, :cond_6

    .line 242
    const-string v2, "Cea708Decoder"

    const-string v5, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {v2, v5}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    goto :goto_0

    .line 246
    :cond_6
    iget-object v2, v2, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v10, v5, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v5, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, v2, v10

    .line 247
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v10, v5, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v5, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v8, v2, v10

    .line 250
    :goto_3
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v2, v2, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    iget v5, v5, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v7

    if-ne v2, v5, :cond_7

    .line 251
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto :goto_4

    .line 250
    :cond_7
    nop

    .line 253
    .end local v1    # "ccTypeAndValid":I
    .end local v3    # "ccType":I
    .end local v4    # "ccValid":Z
    .end local v6    # "ccData1":B
    .end local v8    # "ccData2":B
    :goto_4
    goto/16 :goto_0

    .line 254
    :cond_8
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeueInputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeueOutputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 182
    invoke-super {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->flush()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 184
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentWindow:I

    .line 186
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cueBuilders:[Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    iget v2, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentWindow:I

    aget-object v1, v1, v2

    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentCueBuilder:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$CueBuilder;

    .line 187
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 188
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder$DtvCcPacket;

    .line 189
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 177
    const-string v0, "Cea708Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .line 193
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic queueInputBuffer(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queueInputBuffer(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
