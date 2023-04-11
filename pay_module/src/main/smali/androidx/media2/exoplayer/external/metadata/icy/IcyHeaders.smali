.class public final Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
.super Ljava/lang/Object;
.source "IcyHeaders.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_HEADER_ENABLE_METADATA_NAME:Ljava/lang/String; = "Icy-MetaData"

.field public static final REQUEST_HEADER_ENABLE_METADATA_VALUE:Ljava/lang/String; = "1"

.field private static final RESPONSE_HEADER_BITRATE:Ljava/lang/String; = "icy-br"

.field private static final RESPONSE_HEADER_GENRE:Ljava/lang/String; = "icy-genre"

.field private static final RESPONSE_HEADER_METADATA_INTERVAL:Ljava/lang/String; = "icy-metaint"

.field private static final RESPONSE_HEADER_NAME:Ljava/lang/String; = "icy-name"

.field private static final RESPONSE_HEADER_PUB:Ljava/lang/String; = "icy-pub"

.field private static final RESPONSE_HEADER_URL:Ljava/lang/String; = "icy-url"

.field private static final TAG:Ljava/lang/String; = "IcyHeaders"


# instance fields
.field public final bitrate:I

.field public final genre:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final isPublic:Z

.field public final metadataInterval:I

.field public final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 238
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "bitrate"    # I
    .param p2, "genre"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "url"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "isPublic"    # Z
    .param p6, "metadataInterval"    # I

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, -0x1

    if-eq p6, v0, :cond_1

    if-lez p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 163
    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    .line 164
    iput-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 167
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    .line 168
    iput p6, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    .line 169
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    .line 178
    return-void
.end method

.method public static parse(Ljava/util/Map;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;"
        }
    .end annotation

    .line 61
    .local p0, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 62
    .local v2, "icyHeadersPresent":Z
    const/4 v3, -0x1

    .line 63
    .local v3, "bitrate":I
    const/4 v4, 0x0

    .line 64
    .local v4, "genre":Ljava/lang/String;
    const/4 v5, 0x0

    .line 65
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 66
    .local v6, "url":Ljava/lang/String;
    const/4 v7, 0x0

    .line 67
    .local v7, "isPublic":Z
    const/4 v8, -0x1

    .line 69
    .local v8, "metadataInterval":I
    const-string v0, "icy-br"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    .line 70
    .local v9, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 71
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 73
    .local v11, "bitrateHeader":Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 74
    if-lez v3, :cond_0

    .line 75
    const/4 v0, 0x1

    move v2, v0

    goto :goto_1

    .line 77
    :cond_0
    const-string v0, "IcyHeaders"

    const-string v12, "Invalid bitrate: "

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_1
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    :goto_0
    invoke-static {v0, v12}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v0, -0x1

    move v3, v0

    .line 82
    :goto_1
    goto :goto_3

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v12, "IcyHeaders"

    const-string v13, "Invalid bitrate header: "

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_2
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v13, v14

    :goto_2
    invoke-static {v12, v13}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 70
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "bitrateHeader":Ljava/lang/String;
    :cond_3
    nop

    .line 84
    :goto_3
    const-string v0, "icy-genre"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    .end local v9    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 86
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Ljava/lang/String;

    .line 87
    const/4 v2, 0x1

    goto :goto_4

    .line 85
    :cond_4
    nop

    .line 89
    :goto_4
    const-string v9, "icy-name"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 90
    if-eqz v0, :cond_5

    .line 91
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    check-cast v5, Ljava/lang/String;

    .line 92
    const/4 v2, 0x1

    goto :goto_5

    .line 90
    :cond_5
    nop

    .line 94
    :goto_5
    const-string v9, "icy-url"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 95
    if-eqz v0, :cond_6

    .line 96
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Ljava/lang/String;

    .line 97
    const/4 v2, 0x1

    goto :goto_6

    .line 95
    :cond_6
    nop

    .line 99
    :goto_6
    const-string v9, "icy-pub"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 100
    if-eqz v0, :cond_7

    .line 101
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 102
    const/4 v2, 0x1

    goto :goto_7

    .line 100
    :cond_7
    nop

    .line 104
    :goto_7
    const-string v9, "icy-metaint"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 105
    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_b

    .line 106
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 108
    .local v10, "metadataIntervalHeader":Ljava/lang/String;
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v8, v0

    .line 109
    if-lez v8, :cond_8

    .line 110
    const/4 v0, 0x1

    move v2, v0

    goto :goto_9

    .line 112
    :cond_8
    const-string v0, "IcyHeaders"

    const-string v11, "Invalid metadata interval: "

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_9
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    :goto_8
    invoke-static {v0, v11}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    const/4 v0, -0x1

    move v8, v0

    .line 117
    :goto_9
    goto :goto_b

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v11, "IcyHeaders"

    const-string v12, "Invalid metadata interval: "

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_a
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    :goto_a
    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 105
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "metadataIntervalHeader":Ljava/lang/String;
    :cond_b
    nop

    .line 119
    :goto_b
    if-eqz v2, :cond_c

    .line 120
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-object v11, v0

    move v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v17}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_c

    .line 121
    :cond_c
    const/4 v0, 0x0

    .line 119
    :goto_c
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 182
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 183
    return v0

    .line 185
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 188
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 189
    .local v2, "other":Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    iget v4, v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 190
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 191
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 192
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    iget-boolean v4, v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    iget v4, v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 191
    :cond_3
    goto :goto_0

    .line 190
    :cond_4
    goto :goto_0

    .line 189
    :cond_5
    nop

    .line 192
    :goto_0
    const/4 v0, 0x0

    .line 189
    :goto_1
    return v0

    .line 185
    .end local v2    # "other":Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    :cond_6
    :goto_2
    nop

    .line 186
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 199
    const/16 v0, 0x11

    .line 200
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    add-int/2addr v1, v2

    .line 201
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 202
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    .line 203
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    nop

    :cond_2
    add-int/2addr v0, v3

    .line 204
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    add-int/2addr v1, v2

    .line 205
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    add-int/2addr v0, v2

    .line 206
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x50

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "IcyHeaders: name=\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", genre=\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", bitrate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", metadataInterval="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 225
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->isPublic:Z

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 230
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return-void
.end method
