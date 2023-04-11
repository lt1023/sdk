.class public interface abstract Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;
.super Ljava/lang/Object;
.source "TrackBitrateEstimator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    return-void
.end method


# virtual methods
.method public abstract getBitrates([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[I)[I
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            "[I)[I"
        }
    .end annotation
.end method
