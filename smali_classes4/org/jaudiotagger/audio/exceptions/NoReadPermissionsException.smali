.class public Lorg/jaudiotagger/audio/exceptions/NoReadPermissionsException;
.super Lorg/jaudiotagger/audio/exceptions/CannotReadException;
.source "NoReadPermissionsException.java"


# static fields
.field private static final serialVersionUID:J = 0x1a9d7ea286e5e4bdL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
