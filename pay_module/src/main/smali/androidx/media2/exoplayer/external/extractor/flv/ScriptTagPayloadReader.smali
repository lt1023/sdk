.class final Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;
.super Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.source "ScriptTagPayloadReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AMF_TYPE_BOOLEAN:I = 0x1

.field private static final AMF_TYPE_DATE:I = 0xb

.field private static final AMF_TYPE_ECMA_ARRAY:I = 0x8

.field private static final AMF_TYPE_END_MARKER:I = 0x9

.field private static final AMF_TYPE_NUMBER:I = 0x0

.field private static final AMF_TYPE_OBJECT:I = 0x3

.field private static final AMF_TYPE_STRICT_ARRAY:I = 0xa

.field private static final AMF_TYPE_STRING:I = 0x2

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final NAME_METADATA:Ljava/lang/String; = "onMetaData"


# instance fields
.field private durationUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 54
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    .line 55
    return-void
.end method

.method private static readAmfBoolean(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 109
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Ljava/lang/Object;
    .locals 1
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "type"    # I

    .line 200
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 214
    :pswitch_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfDate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 212
    :pswitch_1
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfStrictArray(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_2
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfObject(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 206
    :pswitch_3
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_4
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfBoolean(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 202
    :pswitch_5
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readAmfDate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/Date;
    .locals 3
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 194
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 195
    .local v0, "date":Ljava/util/Date;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 196
    return-object v0
.end method

.method private static readAmfDouble(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/Double;
    .locals 2
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 119
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfEcmaArray(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 6
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 178
    .local v0, "count":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 179
    .local v1, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 180
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v4

    .line 182
    .local v4, "type":I
    invoke-static {p0, v4}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static readAmfObject(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 4
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v2

    .line 162
    .local v2, "type":I
    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 163
    nop

    .line 167
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    return-object v0

    .line 165
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_0
    invoke-static {p0, v2}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    goto :goto_0
.end method

.method private static readAmfStrictArray(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 143
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 145
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v3

    .line 146
    .local v3, "type":I
    invoke-static {p0, v3}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v3    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static readAmfString(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 129
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 130
    .local v0, "size":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 131
    .local v1, "position":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 132
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static readAmfType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .locals 1
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 99
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 58
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    return-wide v0
.end method

.method protected parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 1
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected parsePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .locals 9
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v0

    .line 74
    .local v0, "nameType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 78
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "name":Ljava/lang/String;
    const-string v2, "onMetaData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v2

    .line 84
    .local v2, "type":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 86
    return-void

    .line 89
    :cond_1
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v3

    .line 90
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "duration"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    const-string v4, "duration"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 92
    .local v4, "durationSeconds":D
    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    .line 93
    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v4

    double-to-long v6, v6

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    goto :goto_0

    .line 92
    :cond_2
    goto :goto_0

    .line 90
    .end local v4    # "durationSeconds":D
    :cond_3
    nop

    .line 96
    :goto_0
    return-void

    .line 76
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1
.end method

.method public seek()V
    .locals 0

    .line 64
    return-void
.end method
