.class final Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final LANGUAGE_UNDEFINED:Ljava/lang/String; = "und"

.field private static final MDTA_KEY_ANDROID_CAPTURE_FPS:Ljava/lang/String; = "com.android.capture.fps"

.field private static final MDTA_TYPE_INDICATOR_FLOAT:I = 0x17

.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final SHORT_TYPE_ALBUM:I = 0x616c62

.field private static final SHORT_TYPE_ARTIST:I = 0x415254

.field private static final SHORT_TYPE_COMMENT:I = 0x636d74

.field private static final SHORT_TYPE_COMPOSER_1:I = 0x636f6d

.field private static final SHORT_TYPE_COMPOSER_2:I = 0x777274

.field private static final SHORT_TYPE_ENCODER:I = 0x746f6f

.field private static final SHORT_TYPE_GENRE:I = 0x67656e

.field private static final SHORT_TYPE_LYRICS:I = 0x6c7972

.field private static final SHORT_TYPE_NAME_1:I = 0x6e616d

.field private static final SHORT_TYPE_NAME_2:I = 0x74726b

.field private static final SHORT_TYPE_YEAR:I = 0x646179

.field private static final STANDARD_GENRES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I = 0x61415254

.field private static final TYPE_COMPILATION:I = 0x6370696c

.field private static final TYPE_COVER_ART:I = 0x636f7672

.field private static final TYPE_DISK_NUMBER:I = 0x6469736b

.field private static final TYPE_GAPLESS_ALBUM:I = 0x70676170

.field private static final TYPE_GENRE:I = 0x676e7265

.field private static final TYPE_GROUPING:I = 0x677270

.field private static final TYPE_INTERNAL:I = 0x2d2d2d2d

.field private static final TYPE_RATING:I = 0x72746e67

.field private static final TYPE_SORT_ALBUM:I = 0x736f616c

.field private static final TYPE_SORT_ALBUM_ARTIST:I = 0x736f6161

.field private static final TYPE_SORT_ARTIST:I = 0x736f6172

.field private static final TYPE_SORT_COMPOSER:I = 0x736f636f

.field private static final TYPE_SORT_TRACK_NAME:I = 0x736f6e6d

.field private static final TYPE_TEMPO:I = 0x746d706f

.field private static final TYPE_TOP_BYTE_COPYRIGHT:I = 0xa9

.field private static final TYPE_TOP_BYTE_REPLACEMENT:I = 0xfd

.field private static final TYPE_TRACK_NUMBER:I = 0x74726b6e

.field private static final TYPE_TV_SHOW:I = 0x74767368

.field private static final TYPE_TV_SORT_SHOW:I = 0x736f736e


# direct methods
.method static constructor <clinit>()V
    .locals 148

    .line 85
    const-string v0, "Blues"

    const-string v1, "Classic Rock"

    const-string v2, "Country"

    const-string v3, "Dance"

    const-string v4, "Disco"

    const-string v5, "Funk"

    const-string v6, "Grunge"

    const-string v7, "Hip-Hop"

    const-string v8, "Jazz"

    const-string v9, "Metal"

    const-string v10, "New Age"

    const-string v11, "Oldies"

    const-string v12, "Other"

    const-string v13, "Pop"

    const-string v14, "R&B"

    const-string v15, "Rap"

    const-string v16, "Reggae"

    const-string v17, "Rock"

    const-string v18, "Techno"

    const-string v19, "Industrial"

    const-string v20, "Alternative"

    const-string v21, "Ska"

    const-string v22, "Death Metal"

    const-string v23, "Pranks"

    const-string v24, "Soundtrack"

    const-string v25, "Euro-Techno"

    const-string v26, "Ambient"

    const-string v27, "Trip-Hop"

    const-string v28, "Vocal"

    const-string v29, "Jazz+Funk"

    const-string v30, "Fusion"

    const-string v31, "Trance"

    const-string v32, "Classical"

    const-string v33, "Instrumental"

    const-string v34, "Acid"

    const-string v35, "House"

    const-string v36, "Game"

    const-string v37, "Sound Clip"

    const-string v38, "Gospel"

    const-string v39, "Noise"

    const-string v40, "AlternRock"

    const-string v41, "Bass"

    const-string v42, "Soul"

    const-string v43, "Punk"

    const-string v44, "Space"

    const-string v45, "Meditative"

    const-string v46, "Instrumental Pop"

    const-string v47, "Instrumental Rock"

    const-string v48, "Ethnic"

    const-string v49, "Gothic"

    const-string v50, "Darkwave"

    const-string v51, "Techno-Industrial"

    const-string v52, "Electronic"

    const-string v53, "Pop-Folk"

    const-string v54, "Eurodance"

    const-string v55, "Dream"

    const-string v56, "Southern Rock"

    const-string v57, "Comedy"

    const-string v58, "Cult"

    const-string v59, "Gangsta"

    const-string v60, "Top 40"

    const-string v61, "Christian Rap"

    const-string v62, "Pop/Funk"

    const-string v63, "Jungle"

    const-string v64, "Native American"

    const-string v65, "Cabaret"

    const-string v66, "New Wave"

    const-string v67, "Psychadelic"

    const-string v68, "Rave"

    const-string v69, "Showtunes"

    const-string v70, "Trailer"

    const-string v71, "Lo-Fi"

    const-string v72, "Tribal"

    const-string v73, "Acid Punk"

    const-string v74, "Acid Jazz"

    const-string v75, "Polka"

    const-string v76, "Retro"

    const-string v77, "Musical"

    const-string v78, "Rock & Roll"

    const-string v79, "Hard Rock"

    const-string v80, "Folk"

    const-string v81, "Folk-Rock"

    const-string v82, "National Folk"

    const-string v83, "Swing"

    const-string v84, "Fast Fusion"

    const-string v85, "Bebob"

    const-string v86, "Latin"

    const-string v87, "Revival"

    const-string v88, "Celtic"

    const-string v89, "Bluegrass"

    const-string v90, "Avantgarde"

    const-string v91, "Gothic Rock"

    const-string v92, "Progressive Rock"

    const-string v93, "Psychedelic Rock"

    const-string v94, "Symphonic Rock"

    const-string v95, "Slow Rock"

    const-string v96, "Big Band"

    const-string v97, "Chorus"

    const-string v98, "Easy Listening"

    const-string v99, "Acoustic"

    const-string v100, "Humour"

    const-string v101, "Speech"

    const-string v102, "Chanson"

    const-string v103, "Opera"

    const-string v104, "Chamber Music"

    const-string v105, "Sonata"

    const-string v106, "Symphony"

    const-string v107, "Booty Bass"

    const-string v108, "Primus"

    const-string v109, "Porn Groove"

    const-string v110, "Satire"

    const-string v111, "Slow Jam"

    const-string v112, "Club"

    const-string v113, "Tango"

    const-string v114, "Samba"

    const-string v115, "Folklore"

    const-string v116, "Ballad"

    const-string v117, "Power Ballad"

    const-string v118, "Rhythmic Soul"

    const-string v119, "Freestyle"

    const-string v120, "Duet"

    const-string v121, "Punk Rock"

    const-string v122, "Drum Solo"

    const-string v123, "A capella"

    const-string v124, "Euro-House"

    const-string v125, "Dance Hall"

    const-string v126, "Goa"

    const-string v127, "Drum & Bass"

    const-string v128, "Club-House"

    const-string v129, "Hardcore"

    const-string v130, "Terror"

    const-string v131, "Indie"

    const-string v132, "BritPop"

    const-string v133, "Negerpunk"

    const-string v134, "Polsk Punk"

    const-string v135, "Beat"

    const-string v136, "Christian Gangsta Rap"

    const-string v137, "Heavy Metal"

    const-string v138, "Black Metal"

    const-string v139, "Crossover"

    const-string v140, "Contemporary Christian"

    const-string v141, "Christian Rock"

    const-string v142, "Merengue"

    const-string v143, "Salsa"

    const-string v144, "Thrash Metal"

    const-string v145, "Anime"

    const-string v146, "Jpop"

    const-string v147, "Synthpop"

    filled-new-array/range {v0 .. v147}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatWithMetadata(ILandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;)Landroidx/media2/exoplayer/external/Format;
    .locals 8
    .param p0, "trackType"    # I
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "udtaMetadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mdtaMetadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "gaplessInfoHolder"    # Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    .line 133
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 134
    invoke-virtual {p4}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget v0, p4, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    iget v1, p4, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 136
    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithGaplessInfo(II)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    goto :goto_0

    .line 134
    :cond_0
    nop

    .line 140
    :goto_0
    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    goto :goto_3

    .line 140
    :cond_1
    goto :goto_3

    .line 143
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_6

    if-eqz p3, :cond_6

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 146
    invoke-virtual {p3, v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v2

    .line 147
    .local v2, "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    instance-of v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    if-eqz v3, :cond_4

    .line 148
    move-object v3, v2

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    .line 149
    .local v3, "mdtaMetadataEntry":Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
    const-string v4, "com.android.capture.fps"

    iget-object v5, v3, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    const/16 v5, 0x17

    if-ne v4, v5, :cond_3

    .line 152
    :try_start_0
    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    .line 153
    .local v4, "fps":F
    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/Format;->copyWithFrameRate(F)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    move-object p1, v5

    .line 154
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v6, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v5

    .line 157
    .end local v4    # "fps":F
    goto :goto_2

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "MetadataUtil"

    const-string v6, "Ignoring invalid framerate"

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    goto :goto_2

    .line 147
    .end local v3    # "mdtaMetadataEntry":Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
    :cond_4
    nop

    .line 145
    .end local v2    # "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    goto :goto_3

    .line 143
    .end local v1    # "i":I
    :cond_6
    nop

    .line 162
    :goto_3
    return-object p1
.end method

.method private static parseCommentAttribute(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
    .locals 6
    .param p0, "type"    # I
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 290
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 291
    .local v0, "atomSize":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 292
    .local v1, "atomType":I
    const v2, 0x64617461

    if-ne v1, v2, :cond_0

    .line 293
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 294
    add-int/lit8 v2, v0, -0x10

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    const-string/jumbo v4, "und"

    invoke-direct {v3, v4, v2, v2}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 297
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string v2, "MetadataUtil"

    const-string v3, "Failed to parse comment attribute: "

    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x0

    return-object v2
.end method

.method private static parseCoverArt(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;
    .locals 9
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 356
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 357
    .local v0, "atomSize":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 358
    .local v1, "atomType":I
    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_3

    .line 359
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 360
    .local v3, "fullVersionInt":I
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v4

    .line 361
    .local v4, "flags":I
    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    const-string v5, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v5, 0xe

    if-ne v4, v5, :cond_1

    const-string v5, "image/png"

    goto :goto_0

    :cond_1
    move-object v5, v2

    .line 362
    .local v5, "mimeType":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_2

    .line 363
    const-string v6, "MetadataUtil"

    const/16 v7, 0x29

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unrecognized cover art flags: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-object v2

    .line 366
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 367
    add-int/lit8 v6, v0, -0x10

    new-array v6, v6, [B

    .line 368
    .local v6, "pictureData":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {p0, v6, v7, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 369
    new-instance v7, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    const/4 v8, 0x3

    invoke-direct {v7, v5, v2, v8, v6}, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v7

    .line 375
    .end local v3    # "fullVersionInt":I
    .end local v4    # "flags":I
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "pictureData":[B
    :cond_3
    const-string v3, "MetadataUtil"

    const-string v4, "Failed to parse cover art attribute"

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-object v2
.end method

.method public static parseIlstElement(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    .locals 8
    .param p0, "ilst"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 176
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 177
    .local v0, "position":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v1, v0

    .line 178
    .local v1, "endPosition":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 179
    .local v2, "type":I
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 181
    .local v3, "typeTopByte":I
    const/16 v4, 0xa9

    if-eq v3, v4, :cond_12

    const/16 v4, 0xfd

    if-ne v3, v4, :cond_0

    goto/16 :goto_0

    .line 204
    :cond_0
    const v4, 0x676e7265

    if-ne v2, v4, :cond_1

    .line 205
    :try_start_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 205
    return-object v4

    .line 206
    :cond_1
    const v4, 0x6469736b

    if-ne v2, v4, :cond_2

    .line 207
    :try_start_1
    const-string v4, "TPOS"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 207
    return-object v4

    .line 208
    :cond_2
    const v4, 0x74726b6e

    if-ne v2, v4, :cond_3

    .line 209
    :try_start_2
    const-string v4, "TRCK"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 209
    return-object v4

    .line 210
    :cond_3
    const v4, 0x746d706f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_4

    .line 211
    :try_start_3
    const-string v4, "TBPM"

    invoke-static {v2, v4, p0, v6, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 211
    return-object v4

    .line 212
    :cond_4
    const v4, 0x6370696c

    if-ne v2, v4, :cond_5

    .line 213
    :try_start_4
    const-string v4, "TCMP"

    invoke-static {v2, v4, p0, v6, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 213
    return-object v4

    .line 214
    :cond_5
    const v4, 0x636f7672

    if-ne v2, v4, :cond_6

    .line 215
    :try_start_5
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseCoverArt(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 215
    return-object v4

    .line 216
    :cond_6
    const v4, 0x61415254

    if-ne v2, v4, :cond_7

    .line 217
    :try_start_6
    const-string v4, "TPE2"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 217
    return-object v4

    .line 218
    :cond_7
    const v4, 0x736f6e6d

    if-ne v2, v4, :cond_8

    .line 219
    :try_start_7
    const-string v4, "TSOT"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 219
    return-object v4

    .line 220
    :cond_8
    const v4, 0x736f616c

    if-ne v2, v4, :cond_9

    .line 221
    :try_start_8
    const-string v4, "TSO2"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 221
    return-object v4

    .line 222
    :cond_9
    const v4, 0x736f6172

    if-ne v2, v4, :cond_a

    .line 223
    :try_start_9
    const-string v4, "TSOA"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 223
    return-object v4

    .line 224
    :cond_a
    const v4, 0x736f6161

    if-ne v2, v4, :cond_b

    .line 225
    :try_start_a
    const-string v4, "TSOP"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 225
    return-object v4

    .line 226
    :cond_b
    const v4, 0x736f636f

    if-ne v2, v4, :cond_c

    .line 227
    :try_start_b
    const-string v4, "TSOC"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 227
    return-object v4

    .line 228
    :cond_c
    const v4, 0x72746e67

    if-ne v2, v4, :cond_d

    .line 229
    :try_start_c
    const-string v4, "ITUNESADVISORY"

    invoke-static {v2, v4, p0, v5, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 229
    return-object v4

    .line 230
    :cond_d
    const v4, 0x70676170

    if-ne v2, v4, :cond_e

    .line 231
    :try_start_d
    const-string v4, "ITUNESGAPLESS"

    invoke-static {v2, v4, p0, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 231
    return-object v4

    .line 232
    :cond_e
    const v4, 0x736f736e

    if-ne v2, v4, :cond_f

    .line 233
    :try_start_e
    const-string v4, "TVSHOWSORT"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 233
    return-object v4

    .line 234
    :cond_f
    const v4, 0x74767368

    if-ne v2, v4, :cond_10

    .line 235
    :try_start_f
    const-string v4, "TVSHOW"

    invoke-static {v2, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 235
    return-object v4

    .line 236
    :cond_10
    const v4, 0x2d2d2d2d

    if-ne v2, v4, :cond_11

    .line 237
    :try_start_10
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseInternalAttribute(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 237
    return-object v4

    .line 236
    :cond_11
    goto/16 :goto_1

    .line 181
    :cond_12
    :goto_0
    nop

    .line 182
    const v4, 0xffffff

    and-int/2addr v4, v2

    .line 183
    .local v4, "shortType":I
    const v5, 0x636d74

    if-ne v4, v5, :cond_13

    .line 184
    :try_start_11
    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    move-result-object v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 184
    return-object v5

    .line 242
    .end local v4    # "shortType":I
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 185
    .restart local v4    # "shortType":I
    :cond_13
    const v5, 0x6e616d

    if-eq v4, v5, :cond_1f

    const v5, 0x74726b

    if-ne v4, v5, :cond_14

    goto/16 :goto_4

    .line 187
    :cond_14
    const v5, 0x636f6d

    if-eq v4, v5, :cond_1e

    const v5, 0x777274

    if-ne v4, v5, :cond_15

    goto/16 :goto_3

    .line 189
    :cond_15
    const v5, 0x646179

    if-ne v4, v5, :cond_16

    .line 190
    :try_start_12
    const-string v5, "TDRC"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 190
    return-object v5

    .line 191
    :cond_16
    const v5, 0x415254

    if-ne v4, v5, :cond_17

    .line 192
    :try_start_13
    const-string v5, "TPE1"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 192
    return-object v5

    .line 193
    :cond_17
    const v5, 0x746f6f

    if-ne v4, v5, :cond_18

    .line 194
    :try_start_14
    const-string v5, "TSSE"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 194
    return-object v5

    .line 195
    :cond_18
    const v5, 0x616c62

    if-ne v4, v5, :cond_19

    .line 196
    :try_start_15
    const-string v5, "TALB"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 196
    return-object v5

    .line 197
    :cond_19
    const v5, 0x6c7972

    if-ne v4, v5, :cond_1a

    .line 198
    :try_start_16
    const-string v5, "USLT"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 198
    return-object v5

    .line 199
    :cond_1a
    const v5, 0x67656e

    if-ne v4, v5, :cond_1b

    .line 200
    :try_start_17
    const-string v5, "TCON"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 200
    return-object v5

    .line 201
    :cond_1b
    const v5, 0x677270

    if-ne v4, v5, :cond_1c

    .line 202
    :try_start_18
    const-string v5, "TIT1"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 202
    return-object v5

    .line 201
    :cond_1c
    nop

    .line 204
    .end local v4    # "shortType":I
    nop

    .line 239
    :goto_1
    :try_start_19
    const-string v4, "MetadataUtil"

    const-string v5, "Skipped unknown metadata entry: "

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1d
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_2
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 240
    const/4 v4, 0x0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 240
    return-object v4

    .line 187
    .restart local v4    # "shortType":I
    :cond_1e
    :goto_3
    nop

    .line 188
    :try_start_1a
    const-string v5, "TCOM"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 188
    return-object v5

    .line 185
    :cond_1f
    :goto_4
    nop

    .line 186
    :try_start_1b
    const-string v5, "TIT2"

    invoke-static {v2, v5, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 242
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 186
    return-object v5

    .line 242
    .end local v4    # "shortType":I
    :goto_5
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    throw v4
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .locals 9
    .param p0, "type"    # I
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 324
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 325
    .local v0, "atomSize":I
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 326
    .local v1, "atomType":I
    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_2

    const/16 v3, 0x16

    if-lt v0, v3, :cond_2

    .line 327
    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 328
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 329
    .local v3, "index":I
    if-lez v3, :cond_1

    .line 330
    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 332
    .local v5, "count":I
    if-lez v5, :cond_0

    .line 333
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xc

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 332
    :cond_0
    nop

    .line 335
    :goto_0
    new-instance v6, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-direct {v6, p1, v2, v4}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 329
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "count":I
    :cond_1
    goto :goto_1

    .line 326
    .end local v3    # "index":I
    :cond_2
    nop

    .line 338
    :goto_1
    const-string v3, "MetadataUtil"

    const-string v4, "Failed to parse index/count attribute: "

    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_2
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-object v2
.end method

.method private static parseInternalAttribute(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .locals 8
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "endPosition"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "domain":Ljava/lang/String;
    const/4 v1, 0x0

    .line 383
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    .line 384
    .local v2, "dataAtomPosition":I
    const/4 v3, -0x1

    .line 385
    .local v3, "dataAtomSize":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    if-ge v4, p1, :cond_3

    .line 386
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 387
    .local v4, "atomPosition":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 388
    .local v5, "atomSize":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 389
    .local v6, "atomType":I
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 390
    const v7, 0x6d65616e

    if-ne v6, v7, :cond_0

    .line 391
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 392
    :cond_0
    const v7, 0x6e616d65

    if-ne v6, v7, :cond_1

    .line 393
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 395
    :cond_1
    const v7, 0x64617461

    if-ne v6, v7, :cond_2

    .line 396
    move v2, v4

    .line 397
    move v3, v5

    goto :goto_1

    .line 395
    :cond_2
    nop

    .line 399
    :goto_1
    add-int/lit8 v7, v5, -0xc

    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 401
    .end local v4    # "atomPosition":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    :goto_2
    goto :goto_0

    .line 402
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    goto :goto_3

    .line 405
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 406
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 407
    add-int/lit8 v4, v3, -0x10

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;

    invoke-direct {v5, v0, v1, v4}, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 402
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    :goto_3
    nop

    .line 403
    const/4 v4, 0x0

    return-object v4
.end method

.method public static parseMdtaMetadataEntryFromIlst(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
    .locals 8
    .param p0, "ilst"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "endPosition"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 258
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v1, v0

    .local v1, "atomPosition":I
    if-ge v0, p1, :cond_1

    .line 259
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 260
    .local v0, "atomSize":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 261
    .local v2, "atomType":I
    const v3, 0x64617461

    if-ne v2, v3, :cond_0

    .line 262
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 263
    .local v3, "typeIndicator":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 264
    .local v4, "localeIndicator":I
    add-int/lit8 v5, v0, -0x10

    .line 265
    .local v5, "dataSize":I
    new-array v6, v5, [B

    .line 266
    .local v6, "value":[B
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 267
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    invoke-direct {v7, p2, v6, v4, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    return-object v7

    .line 269
    .end local v3    # "typeIndicator":I
    .end local v4    # "localeIndicator":I
    .end local v5    # "dataSize":I
    .end local v6    # "value":[B
    :cond_0
    add-int v3, v1, v0

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 270
    .end local v0    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseStandardGenreAttribute(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .locals 5
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 344
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v0

    .line 345
    .local v0, "genreCode":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    sget-object v2, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v3, v2

    if-gt v0, v3, :cond_0

    .line 346
    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 345
    :cond_0
    nop

    .line 346
    move-object v2, v1

    .line 347
    .local v2, "genreString":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    .line 348
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    const-string v4, "TCON"

    invoke-direct {v3, v4, v1, v2}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 350
    :cond_1
    const-string v3, "MetadataUtil"

    const-string v4, "Failed to parse standard genre code"

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-object v1
.end method

.method private static parseTextAttribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;
    .locals 7
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 277
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 278
    .local v0, "atomSize":I
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 279
    .local v1, "atomType":I
    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_0

    .line 280
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 281
    add-int/lit8 v3, v0, -0x10

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-direct {v4, p1, v2, v3}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 284
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string v3, "MetadataUtil"

    const-string v4, "Failed to parse text attribute: "

    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-object v2
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Landroidx/media2/exoplayer/external/util/ParsableByteArray;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .locals 6
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p3, "isTextInformationFrame"    # Z
    .param p4, "isBoolean"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 308
    invoke-static {p2}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v0

    .line 309
    .local v0, "value":I
    if-eqz p4, :cond_0

    .line 310
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 309
    :cond_0
    nop

    .line 312
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 313
    if-eqz p3, :cond_1

    .line 314
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v1, v3}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :cond_1
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    const-string/jumbo v1, "und"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, p1, v3}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_1
    return-object v2

    .line 317
    :cond_2
    const-string v2, "MetadataUtil"

    const-string v3, "Failed to parse uint8 attribute: "

    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-object v1
.end method

.method private static parseUint8AttributeValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .locals 3
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 412
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 413
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 414
    .local v0, "atomType":I
    const v1, 0x64617461

    if-ne v0, v1, :cond_0

    .line 415
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 416
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    return v1

    .line 418
    :cond_0
    const-string v1, "MetadataUtil"

    const-string v2, "Failed to parse uint8 attribute value"

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v1, -0x1

    return v1
.end method
