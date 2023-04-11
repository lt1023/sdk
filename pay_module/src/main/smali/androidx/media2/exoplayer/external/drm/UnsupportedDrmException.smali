.class public final Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
.super Ljava/lang/Exception;
.source "UnsupportedDrmException.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException$Reason;
    }
.end annotation


# static fields
.field public static final REASON_INSTANTIATION_ERROR:I = 0x2

.field public static final REASON_UNSUPPORTED_SCHEME:I = 0x1


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 61
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;->reason:I

    .line 62
    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 69
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 70
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;->reason:I

    .line 71
    return-void
.end method
