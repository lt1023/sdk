.class public final Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media2/exoplayer/external/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingEnabled:Z

.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    const/4 v0, 0x0

    .line 69
    .local v0, "flacExtractorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/media2/exoplayer/external/extractor/Extractor;>;"
    :try_start_0
    const-string v1, "androidx.media2.exoplayer.external.ext.flac.FlacExtractor"

    .line 70
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 79
    :goto_0
    nop

    .line 80
    sput-object v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 81
    .end local v0    # "flacExtractorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/media2/exoplayer/external/extractor/Extractor;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->tsMode:I

    .line 95
    return-void
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 10

    monitor-enter p0

    .line 217
    :try_start_0
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xd

    if-nez v0, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 218
    .local v0, "extractors":[Landroidx/media2/exoplayer/external/extractor/Extractor;
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 219
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 220
    const/4 v2, 0x2

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;-><init>(I)V

    aput-object v5, v0, v2

    .line 221
    const/4 v2, 0x3

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->mp3Flags:I

    .line 224
    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v7, :cond_1

    .line 225
    const/4 v7, 0x1

    goto :goto_1

    .line 226
    :cond_1
    nop

    const/4 v7, 0x0

    :goto_1
    nop

    or-int/2addr v6, v7

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(I)V

    nop

    aput-object v5, v0, v2

    .line 227
    nop

    const/4 v2, 0x4

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    nop

    const-wide/16 v6, 0x0

    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->adtsFlags:I

    .line 231
    nop

    iget-boolean v9, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    nop

    if-eqz v9, :cond_2

    .line 232
    nop

    const/4 v9, 0x1

    goto :goto_2

    .line 233
    :cond_2
    nop

    nop

    const/4 v9, 0x0

    :goto_2
    nop

    or-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>(JI)V

    nop

    aput-object v5, v0, v2

    .line 234
    nop

    const/4 v2, 0x5

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    nop

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    nop

    aput-object v5, v0, v2

    .line 235
    nop

    const/4 v2, 0x6

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    nop

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->tsMode:I

    nop

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->tsFlags:I

    nop

    invoke-direct {v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(II)V

    nop

    aput-object v5, v0, v2

    .line 236
    nop

    const/4 v2, 0x7

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;

    nop

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;-><init>()V

    nop

    aput-object v5, v0, v2

    .line 237
    nop

    const/16 v2, 0x8

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;

    nop

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;-><init>()V

    nop

    aput-object v5, v0, v2

    .line 238
    nop

    const/16 v2, 0x9

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;

    nop

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;-><init>()V

    nop

    aput-object v5, v0, v2

    .line 239
    nop

    const/16 v2, 0xa

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;

    nop

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;-><init>()V

    nop

    aput-object v5, v0, v2

    .line 240
    nop

    const/16 v2, 0xb

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;

    nop

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->amrFlags:I

    .line 243
    nop

    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    nop

    if-eqz v7, :cond_3

    .line 244
    nop

    goto :goto_3

    .line 245
    :cond_3
    nop

    nop

    const/4 v4, 0x0

    :goto_3
    nop

    or-int/2addr v4, v6

    invoke-direct {v5, v4}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;-><init>(I)V

    nop

    aput-object v5, v0, v2

    .line 246
    nop

    const/16 v2, 0xc

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    nop

    invoke-direct {v4}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;-><init>()V

    nop

    aput-object v4, v0, v2

    .line 247
    nop

    sget-object v2, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v2, :cond_4

    .line 249
    nop

    :try_start_1
    sget-object v2, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    nop

    new-array v3, v3, [Ljava/lang/Object;

    nop

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/Extractor;

    nop

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    nop

    goto :goto_4

    .line 250
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    :catch_0
    move-exception v1

    nop

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    nop

    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    const-string v3, "Unexpected error creating FLAC extractor"

    nop

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    nop

    .line 255
    :goto_4
    nop

    monitor-exit p0

    return-object v0

    .line 216
    .end local v0    # "extractors":[Landroidx/media2/exoplayer/external/extractor/Extractor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdtsExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 123
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->adtsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-object p0

    .line 122
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAmrExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 135
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->amrFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-object p0

    .line 134
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingEnabled(Z)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "constantBitrateSeekingEnabled"    # Z

    monitor-enter p0

    .line 110
    :try_start_0
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-object p0

    .line 109
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "constantBitrateSeekingEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 173
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-object p0

    .line 172
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 148
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-object p0

    .line 147
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 185
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-object p0

    .line 184
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 160
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->mp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-object p0

    .line 159
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "flags"    # I

    monitor-enter p0

    .line 211
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-object p0

    .line 210
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .locals 0
    .param p1, "mode"    # I

    monitor-enter p0

    .line 197
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->tsMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-object p0

    .line 196
    .end local p0    # "this":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
